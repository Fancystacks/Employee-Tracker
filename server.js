const mysql = require("mysql");
const inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "greenp0ison",
    database: "employeeDB"
  });

  connection.connect(function(err) {
    if (err) throw err;
    console.log(`Server connected as id ${connection.threadId} \n`);
  });

  