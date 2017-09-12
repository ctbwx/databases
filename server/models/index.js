var db = require('../db');
var ctrl = require('../controllers')

module.exports = {
  messages: {
    get: function () {}, // a function which produces all the messages
    post: function (text, user, room) {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};
