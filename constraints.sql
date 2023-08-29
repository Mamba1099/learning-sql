-- using constraints on multiple column
CREATE TABLE my_info (
    iD int NOT NULL,
    username int NOT NULL, 
    first_name VARCHAR(255) NOT NULL,
    nationality VARCHAR9(255) NOT NULL,
    city    VARCHAR(255) NOT NULL
    CONSTRAINT UC_my_info(ID, username)

-- using primary key constraints on multiple column

CREATE TABLE my_info (
    iD int NOT NULL PRIMARY KEY,
    username int NOT NULL PRIMARY KEY, 
    first_name VARCHAR(255) NOT NULL,
    nationality VARCHAR9(255) NOT NULL,
    city    VARCHAR(255) NOT NULL
