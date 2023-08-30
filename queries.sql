CREATE TABLE Employees (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    salary DECIMAL
);

-- +--------+---------------+------+-----+---------+----------------+
-- | Field  | Type          | Null | Key | Default | Extra          |
-- +--------+---------------+------+-----+---------+----------------+
-- | Id     | int           | NO   | PRI | NULL    | auto_increment |
-- | email  | varchar(255)  | YES  |     | NULL    |                |
-- | salary | decimal(10,0) | YES  |     | NULL    |                |
-- +--------+---------------+------+-----+---------+----------------+

INSERT INTO Employees (email, salary) VALUES
    ('john.doe@example.com', 50000.00),
    ('sarah.smith@email.net', 60000.00),
    ('mike1234@gmail.com', 55000.00),
    ('emily.jones123@hotmail.com', 48000.00),
    ('robert_1987@yahoo.co.uk', 62000.00),
    ('anna.johnson@example.org', 53000.00),
    ('david.miller123@outlook.com', 57000.00),
    ('lisa-brown34@emailprovider.net', 51000.00),
    ('samuel.green55@gmail.com', 59000.00),
    ('mary_thompson@example.com', 54000.00);

-- +----+--------------------------------+--------+
-- | Id | email                          | salary |
-- +----+--------------------------------+--------+
-- |  1 | john.doe@example.com           |  50000 |
-- |  2 | sarah.smith@email.net          |  60000 |
-- |  3 | mike1234@gmail.com             |  55000 |
-- |  4 | emily.jones123@hotmail.com     |  48000 |
-- |  5 | robert_1987@yahoo.co.uk        |  62000 |
-- |  6 | anna.johnson@example.org       |  53000 |
-- |  7 | david.miller123@outlook.com    |  57000 |
-- |  8 | lisa-brown34@emailprovider.net |  51000 |
-- |  9 | samuel.green55@gmail.com       |  59000 |
-- | 10 | mary_thompson@example.com      |  54000 |
-- +----+--------------------------------+--------+

-- selecting individual data
SELECT * FROM Employees WHERE Id = 3;

-- +----+--------------------+--------+
-- | Id | email              | salary |
-- +----+--------------------+--------+
-- |  3 | mike1234@gmail.com |  55000 |
-- +----+--------------------+--------+

SELECT * FROM Employees WHERE email = 'lisa-brown34@emailprovider.net';
-- +----+--------------------------------+--------+
-- | Id | email                          | salary |
-- +----+--------------------------------+--------+
-- |  8 | lisa-brown34@emailprovider.net |  51000 |
-- +----+--------------------------------+--------+

-- selecting data from group by id
SELECT * FROM Employees WHERE salary > 55000; 

-- +----+-----------------------------+--------+
-- | Id | email                       | salary |
-- +----+-----------------------------+--------+
-- |  2 | sarah.smith@email.net       |  60000 |
-- |  5 | robert_1987@yahoo.co.uk     |  62000 |
-- |  7 | david.miller123@outlook.com |  57000 |
-- |  9 | samuel.green55@gmail.com    |  59000 |
-- +----+-----------------------------+--------+