const express = require("express");
const path = require("path");
const http = require("http");
const https = require("https");
const fs = require("fs");
const proxy = require("express-http-proxy");

const port = process.env.PORT || 3001;

const app = express();

const orig_rss_addr = "https://br.pinterest.com";
const orig_img_addr = "https://i.pinimg.com";

app.use(express.static(path.join(__dirname, "static")));
app.use(
  "/cache-rss/:username/:board.rss",
  // simplest non-caching "GET" proxy for the RSS feeds coming from Pinterest
  (req, res, next) => {
    if (req.method !== "GET") {
      return next();
    }
    console.log(`request: ${req.params.username}/${req.params.board}`);
    https.get(`${orig_rss_addr}/${req.params.username}/${req.params.board}.rss`, (resp) => {
      resp.pipe(res);
    });
  }
);
app.use(
  "/cache-images",
  express.static(path.join(__dirname, 'cache-images')),
  (req, res, next) => {
    if (req.method !== "GET") {
      return next();
    }
    console.log(req.url);
    const filepath = path.join(__dirname, "cache-images", req.url);
    const filedir = path.dirname(filepath);
    https.get(`${orig_img_addr}${req.url}`, (resp) => {
      if (resp.statusCode == 200)
      {
        console.log(`writing cache file at ${filepath}`);
        fs.mkdirSync(filedir, { recursive: true });
        let file = fs.createWriteStream(filepath);
        resp.pipe(file);
        file.on("finish", function () {
          file.close();
        });
      } else {
        console.error(`${req.url} returned status code ${resp.statusCode}`);
        res.statusCode = resp.statusCode
      }
      resp.pipe(res);
    })
  }
);
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "static/index.html"));
});
const server = http.createServer(app);

server.listen(port, () => { console.log(`Listening on port ${port}`); });