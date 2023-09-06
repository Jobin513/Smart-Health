
var express = require('express'),
    app = express(),
    server = require('http').createServer(app),
    io = require('socket.io')(server), 
    users = [];

server.listen(process.env.PORT || 2019); 
console.log("Server is running on port 2019");

app.use('/', express.static(__dirname + '/chatroom'));

io.sockets.on('connection', function(socket) {
        var url = socket.handshake.headers.referer;
        var parsedUrl = new URL(url);
        var username = parsedUrl.searchParams.get("username");

            socket.username = username;
            users.push(username);
            socket.emit('loginSuccess');
            io.sockets.emit('system', username, users.length, 'login');

    socket.on('disconnect', function() {
        if (socket.username != null) {
            users.splice(users.indexOf(socket.username), 1);
            socket.broadcast.emit('system', socket.username, users.length, 'logout');
        }
    });

    socket.on('postMsg', function(msg, color) {
        socket.broadcast.emit('newMsg', socket.username, msg, color);
    });

    socket.on('img', function(imgData, color) {
        socket.broadcast.emit('newImg', socket.username, imgData, color);
    });
});