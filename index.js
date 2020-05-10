const express = require("express");
const path = require("path");
const http = require("http");

const port = process.env.PORT || 3001;

const app = express();
app.use(express.static(path.join(__dirname, "static")));
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "static/index.html"));
});
const server = http.createServer(app);

server.listen(port, () => { console.log(`Listening on port ${port}`); });