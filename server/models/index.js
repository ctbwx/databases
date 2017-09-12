var db = require('../db');

module.exports = {
  messages: {
    get: function (res) {
      db.connection.query("SELECT * FROM MESSAGES", function(err, result) {
        if(err) { console.log('Error'); }
        console.log(JSON.parse(JSON.stringify(result[0])));
        // return JSON.parse(JSON.stringify(result[0]));
        res.send(JSON.parse(JSON.stringify(result[0])));
      });
    }, // a function which produces all the messages
    post: function (body) {
      var msgBody = [];
      for (var key in body) {
        msgBody.push('"' + body[key] + '"');
      }
      msgBody = msgBody.join(', ');
      db.connection.query("INSERT INTO messages (message, username, roomname) VALUES (" + msgBody + ")"); // a function which can be used to insert a message into the database
    }
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};
