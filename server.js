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

// view departments
//view roles

function start() {
  inquirer
    .prompt({
      name: "input",
      type: "list",
      message: "What would you like to do?",
      choices: [
        "View Departments",
        "View Roles",
        "View Employees",
        "Add Departments",
        "Add Roles",
        "Add Employees",
        "Update Employee Roles"
      ],
    })
    .then((answer) => {
      console.log(answer.input);
      choice(answer.input);
    })
}

function choice(input) {
  switch (input) {
    case 'View Departments': viewDept(); break;
    case 'View Roles': viewRoles(); break;
    case 'View Employees': viewEmploy(); break;
    case 'Add Departments': addDept(); break;
    case 'Add Roles': addRoles(); break;
    case 'Add Employees': addEmploy(); break;
    case 'Update Employee Roles': updateEmploy(); break;
    default:
      break;
  }
};

function viewDept(){
  connection.query('SELECT * from department', (err, res) => {
    if (err) throw err;
    console.table(res);
   
  })
};

function viewRoles(){
  connection.query('SELECT * from role', (err, res) => {
    if (err) throw err;
    console.table(res);
   
  })
};

function viewEmploy(){
  connection.query('SELECT * from employee', (err, res) => {
    if (err) throw err;
    console.table(res);
   
  })
};

function addDept(){
viewDept();
inquirer
  .prompt(
    {
      name: "newDept",
      type: "input",
      message: "What is the new department name?",
    }
  )
  .then((answer) => {
    connection.query(
      "INSERT INTO department SET ?",
      {
        name: answer.newDept,
      },
      (err, res) => {
        if (err) throw err;
        console.log(`${res.affectedRows} department created!\n`);
      }
    );
  })
};

function addRoles(){
  viewRoles();
  inquirer
    .prompt(
      {
        name: "newRole",
        type: "input",
        message: "What is the new role title?",
      }
    )
    .then((answer) => {
      connection.query(
        "INSERT INTO role SET ?",
        {
          name: answer.newRole,
        },
        (err, res) => {
          if (err) throw err;
          console.log(`${res.affectedRows} role created!\n`);
        }
      );
    })
};

function addEmploy(){
  inquirer
  .prompt([
      {
          name: "firstName",
          type: "input",
          message: "Enter the employee\'s first name."
      },
      {
          name: "lastName",
          type: "input",
          message: "Enter the employee\'s last name."
      },
      {
          name: "role",
          type: "list",
          choices: ['1', '2'],
          message: "Select the employee\'s role."
      },
  ])
  .then((answer) => {
      connection.query(
          "INSERT INTO employee (first_name, last_name, role_id) VALUES (?, ?, ?)",
          [answer.firstName, answer.lastName, answer.role],
          (err, res) => {
              if (err) throw err;
              console.log(`${res.affectedRows} added!\n`);
          }
      );
      viewEmploy();
  })
};

function updateEmploy(){
  viewEmploy();
  inquirer
    .prompt(
      {
        name: "selectEmploy",
        type: "input",
        message: "Enter the ID of the employee you would like to update"
      }
    )
    .then(({selectEmploy}) => {
      console.log(selectEmploy);
      connection.query(
        "UPDATE employee SET ? WHERE ?",
        [
          {
            role_id: selectEmploy.newRole,
          },
          {
            id: selectEmploy.selectEmploy,
          },
        ],
        (err, res) => {
          if (err) throw err;
          console.log("Role changed successfully");
        }
      );
    })
  //call all employees
  //choice of employees
  //update role
};

start(); 

connection.connect((err) => {
  if (err) throw err;
  console.log(`Connection successful!`);

})