use employees;

INSERT INTO department(id,name)
VALUES
    (1,'Studio Arts'),
    (2,'Garden'),
    (3,'Poetry'),
    (4,'Ceramics');

use employees;

INSERT INTO employee(id, first_name, last_name, role_id)
    (10,'Rachel', 'Cohen', ),
    (20,'Marius', 'Bowman', ),
    (30,'Nisha', 'Atalie', ),
    (40,'Caitlin', 'Quinn', );
 
use employees;
INSERT INTO role(id, title, salary, department_id)

    (50, 'Artist in Residence', '70,000.00', 1),
    (60, 'Garden Lead', '55,000.00', 2),
    (70, 'Poet', '65,000.00' 3),
    (80, 'Studio Lead', '60,000.00' 4);

