var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      res.send(req.query);
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      res.send(req.params)
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      res.end('Hello World');
    },
    post: function (req, res) {}
  }
};
