const util = require("util");
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "mrssnuffy11",
});

// Setting up connection.query to use promises instead of callbacks
// This allows us to use the async/await syntax
connection.query = util.promisify(connection.query);

module.exports = connection;
