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