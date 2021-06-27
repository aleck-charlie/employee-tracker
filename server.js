const inquirer = require("inquirer");
const mysql = require("mysql");
const cTable = require("console.table");

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Solonglittlesong1919!",
  database: "employee_trackerDB",
});

// let roles = [];
// let managers = [];
// let departments = [];
// let employeesFirstLast= []

// loadprompts (inquirer choices)
// selecting a choice will go to that function
// view all employees
// view employees by department
// view employees by manager
// add employee
// remove emplyee
// update employee role
// update employee manager
// view roles
// add role
// remove role
// view departments
// add department
// remove department
// quit

connection.connect((err) => {
  if (err) throw err;
  console.log(`Connection successful!`);

});