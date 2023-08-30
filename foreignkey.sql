-- creating table for employees
CREATE TABLE employee(
    ID int AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

-- creating table for employee offices
CREATE TABLE Offices (
    ID int AUTO_INCREMENT PRIMARY KEY,
    room int NOT NULL
);


ALTER TABLE employee
RENAME COLUMN ID to employee_id;

ALTER TABLE Offices
RENAME COLUMN ID to Offices_id;

-- +------------+------+------+-----+---------+----------------+
-- | Field      | Type | Null | Key | Default | Extra          |
-- +------------+------+------+-----+---------+----------------+
-- | Offices_id | int  | NO   | PRI | NULL    | auto_increment |
-- | room       | int  | NO   |     | NULL    |                |
-- +------------+------+------+-----+---------+----------------+



-- adding employee data to database
INSERT INTO employee(first_name, last_name) VALUES ('Mark', 'John');
INSERT INTO employee(first_name, last_name) VALUES ('jane', 'joy');
INSERT INTO employee(first_name, last_name) VALUES ('cate', 'job');
INSERT INTO employee(first_name, last_name) VALUES ('kevin', 'doe');
INSERT INTO employee(first_name, last_name) VALUES ('harry', 'moon');

-- +-------------+------------+-----------+
-- | employee_id | first_name | last_name |
-- +-------------+------------+-----------+
-- |           1 | Mark       | John      |
-- |           2 | jane       | joy       |
-- |           3 | cate       | job       |
-- |           4 | kevin      | doe       |
-- |           5 | harry      | moon      |
-- +-------------+------------+-----------+

INSERT INTO Offices(room) VALUES (100);
INSERT INTO Offices(room) VALUES (111);
INSERT INTO Offices(room) VALUES (222);
INSERT INTO Offices(room) VALUES (333);
INSERT INTO Offices(room) VALUES (444);
INSERT INTO Offices(room) VALUES (555);

-- +------------+------+
-- | Offices_id | room |
-- +------------+------+
-- |          1 |  100 |
-- |          2 |  111 |
-- |          3 |  222 |
-- |          4 |  333 |
-- |          5 |  444 |
-- |          6 |  555 |
-- +------------+------+



CREATE TABLE employeeOffices(
    Id int PRIMARY KEY NOT NULL,
    employee_id int,
    office_id int,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (office_id) REFERENCES Offices(offices_id)
);

-- +-------------+------+------+-----+---------+-------+
-- | Field       | Type | Null | Key | Default | Extra |
-- +-------------+------+------+-----+---------+-------+
-- | Id          | int  | NO   | PRI | NULL    |       |
-- | employee_id | int  | YES  | MUL | NULL    |       |
-- | office_id   | int  | YES  |     | NULL    |       |
-- +-------------+------+------+-----+---------+-------+

INSERT INTO employeeOffices(Id, employee_id, Office_id) VALUES (1, 1, 3);
INSERT INTO employeeOffices(Id, employee_id, Office_id) VALUES (2, 2, 6);
INSERT INTO employeeOffices(Id, employee_id, Office_id) VALUES (3, 3, 5);
INSERT INTO employeeOffices(Id, employee_id, Office_id) VALUES (4, 4, 1);


-- altering table to set foreign key
CREATE TABLE employeeOffices(
    Id int PRIMARY KEY NOT NULL,
    employee_id int,
    office_id int
);


ALTER TABLE employeeOffices
ADD FOREIGN KEY (employee_id) REFERENCES employee(employee_id);

ALTER TABLE employeeOffices
ADD FOREIGN KEY (office_id) REFERENCES Offices(Offices_id);


