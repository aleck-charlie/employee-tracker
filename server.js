const inquirer = require('inquirer');
const mysql = require('mysql');
require('console.table');

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