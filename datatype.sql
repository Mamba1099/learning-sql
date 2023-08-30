-- SQL datatypes
CREATE TABLE Person (
    first_name VARCHAR(50),
    age INT(2),
    salary DECIMAL
);

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | first_name | varchar(50)   | YES  |     | NULL    |       |
-- | age        | int           | YES  |     | NULL    |       |
-- | salary     | decimal(10,0) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+

CREATE TABLE Orders (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    order_name VARCHAR(255),
    order_date DATE
);

-- +------------+--------------+------+-----+---------+----------------+
-- | Field      | Type         | Null | Key | Default | Extra          |
-- +------------+--------------+------+-----+---------+----------------+
-- | Id         | int          | NO   | PRI | NULL    | auto_increment |
-- | order_name | varchar(255) | YES  |     | NULL    |                |
-- | order_date | date         | YES  |     | NULL    |                |
-- +------------+--------------+------+-----+---------+----------------+

INSERT INTO Orders (order_name, order_date) VALUES
    ('Order 1', '2023-08-30'),
    ('Order 2', '2023-08-31'),
    ('Order 3', '2023-09-01'),
    ('Order 4', '2023-09-02');

-- +----+------------+------------+
-- | Id | order_name | order_date |
-- +----+------------+------------+
-- |  1 | Order 1    | 2023-08-30 |
-- |  2 | Order 2    | 2023-08-31 |
-- |  3 | Order 3    | 2023-09-01 |
-- |  4 | Order 4    | 2023-09-02 |
-- +----+------------+------------+

CREATE TABLE Packages (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    order_name VARCHAR(255),
    order_datetime DATE
);

-- +----------------+--------------+------+-----+---------+----------------+
-- | Field          | Type         | Null | Key | Default | Extra          |
-- +----------------+--------------+------+-----+---------+----------------+
-- | Id             | int          | NO   | PRI | NULL    | auto_increment |
-- | order_name     | varchar(255) | YES  |     | NULL    |                |
-- | order_datetime | date         | YES  |     | NULL    |                |
-- +----------------+--------------+------+-----+---------+----------------+

INSERT INTO Packages (order_name, order_datetime) VALUES
    ('Order 1', '2023-08-30 10:23:34'),
    ('Order 2', '2023-08-31 12:30:47'),
    ('Order 3', '2023-09-01 14:47:10'),
    ('Order 4', '2023-09-02 18:20:38');

INSERT INTO Packages (order_name, order_datetime) VALUES 
    ('laptop', '2010-10-23');
-- error: not showing time
-- +----+------------+----------------+
-- | Id | order_name | order_datetime |
-- +----+------------+----------------+
-- |  1 | Order 1    | 2023-08-30     |
-- |  2 | Order 2    | 2023-08-31     |
-- |  3 | Order 3    | 2023-09-01     |
-- |  4 | Order 4    | 2023-09-02     |
-- |  5 | laptop     | 2010-10-23     |
-- |  6 | laptop     | 2010-10-23     |
-- +----+------------+----------------+
