use employee_trackerDB;
-- or use employee?


--Ceramics Dept 100-- Instructor-1 -- Studio Asst-2 -- 
-- Caitlin Quinn -- Valeen Tom -- Chris Lee -- 
--Painting 200-- Instructor-1 -- Studio Asst-2 -- 
-- Rachel Cohen -- Lace Cassidy -- Jenna Martin
--Poetry 300-- Instructor-1 -- Studio Asst-2 --
-- Andrew Rolfsen -- David Rivera -- Rene Fontenot
--Life Drawing 400-- Instructor-1 -- Studio Asst-2 -- 
-- Nisha Atalie - Loren Call -- River Solverson

-- EMPLOYEES
-- Ceramics
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Caitlin', 'Quinn', 1, 101)
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Valeen', 'Tom', 2, NULL)

-- Painting 
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Rachel', 'Cohen', 1, 201)
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Lace', 'Cassidy', 2, NULL)
-- Poetry
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Andrew', 'Rolfsen', 1, 301)
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('David', 'Rivera', 2, NULL)
-- Life Drawing
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Nisha', 'Atalie', 1, 401)
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Loren', 'Call', 1, NULL)


--ROLES--
--Ceramic 
INSERT INTO role (title, salary, department_id)
VALUES ('Instructor', 45,000.00, 1)
INSERT INTO role (title, salary, department_id)
VALUES ('', , 1)
-- Painting 
INSERT INTO role (title, salary, department_id)
VALUES ('', , 1)
INSERT INTO role (title, salary, department_id)
VALUES ('', , 1)
--Poetry
INSERT INTO role (title, salary, department_id)
VALUES ('', , 1)
INSERT INTO role (title, salary, department_id)
VALUES ('', , 1)
--Life Drawing
INSERT INTO role (title, salary, department_id)
VALUES ('', , 1)
INSERT INTO role (title, salary, department_id)
VALUES ('', , 1)

--DEPT
--Painting
--Poetry
--Life Drawing

-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Engineer", 120000, 1);
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Engineer", 120000, 1);
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Engineer", 120000, 1);
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Engineer", 120000, 1);
