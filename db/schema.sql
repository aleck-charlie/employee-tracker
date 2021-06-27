DROP DATABASE IF EXISTS employee_trackerDB;

CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

CREATE TABLE department (
    id INT not NULL PRIMARY KEY DEFAULT 0,
    name VARCHAR(30) not NULL
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT not NULL PRIMARY KEY,
    first_name VARCHAR(30) not NULL,
    last_name VARCHAR(30) not NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id)
);

CREATE TABLE role (
    id INT not NULL PRIMARY KEY DEFAULT 0,
    title VARCHAR(30) not NULL,
    salary DECIMAL(10,2),
    department_id INT not NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)

);