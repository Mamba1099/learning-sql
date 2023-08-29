-- creating database table
CREATE TABLE my_info (
    first_name VARCHAR(255) NOT NULL,
    id_number int NOT NULL,
    age int NOT NULL,
    nationality VARCHAR9(255) NOT NULL,
    city    VARCHAR(255) NOT NULL


);
-- deleting database table
DROP TABLE my_info;

-- delete data inside table but not the database
TRUNCATE TABLE my_info;

--  adding more data to datatbase
ALTER TABLE my_info
ADD Email VARCHAR(255);

-- deleting colmn in a table
ALTER TABLE my_info
DROP COLUMN Email;

-- renaming a column in the db
ALTER TABLE my_info
RENAME COLUMN city to state;

--changing data type of a column
ALTER TABLE my_info
MODIFY COLUMN nationality kenyan;



