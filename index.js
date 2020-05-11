const express = require("express");
const path = require("path");
const http = require("http");
const proxy = require("express-http-proxy");

const port = process.env.PORT || 3001;

const app = express();
app.use(express.static(path.join(__dirname, "static")));
app.use(
  "/cache-rss",
  proxy("https://br.pinterest.com/", {
    filter: function (req, res) {
      return req.method == "GET";
    },
  })
);
app.use(
  "/cache-images",
  proxy("https://i.pinimg.com/", {
    filter: function (req, res) {
      return req.method == "GET";
    },
  })
);
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "static/index.html"));
});
const server = http.createServer(app);

server.listen(port, () => { console.log(`Listening on port ${port}`); });