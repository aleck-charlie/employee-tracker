USE employee_trackerDB;

-- Departments
INSERT INTO department (name)
VALUES ('Ceramics');

INSERT INTO department (name)
VALUES ('Paintings');

INSERT INTO department (name)
VALUES ('Poetry');

INSERT INTO department (name)
VALUES ('Life Drawing');

--ROLES--

INSERT INTO role (title, salary, department_id)
VALUES ('Instructor', 50000.00, 1);
INSERT INTO role (title, salary, department_id)
VALUES ('Asst', 35000.00, 1);
-- Painting 
INSERT INTO role (title, salary, department_id)
VALUES ('Instructor', 50000.00, 2);
INSERT INTO role (title, salary, department_id)
VALUES ('Asst', 35000.00, 2);

INSERT INTO role (title, salary, department_id)
VALUES ('Instructor', 50000.00, 3);
INSERT INTO role (title, salary, department_id)
VALUES ('Asst', 35000.00, 3);

INSERT INTO role (title, salary, department_id)
VALUES ('Instructor', 50000.00, 4);
INSERT INTO role (title, salary, department_id)
VALUES ('Asst', 35000.00, 4);

-- EMPLOYEES

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Caitlin', 'Quinn', 1, 101);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Valeen', 'Tom', 2, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Rachel', 'Cohen', 1, 201);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Lace', 'Cassidy', 2, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Andrew', 'Rolfsen', 1, 301);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('David', 'Rivera', 2, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Nisha', 'Atalie', 1, 401);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Loren', 'Call', 1, NULL);
