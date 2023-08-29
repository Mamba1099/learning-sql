-- creating database table
CREATE TABLE my_info (
    first_name VARCHAR(255),
    id_numb int,
    age int,
    nationality VARCHAR9(255),
    city    VARCHAR(255)


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



