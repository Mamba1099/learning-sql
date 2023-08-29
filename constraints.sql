-- using constraints on multiple column
CREATE TABLE my_info (
    first_name VARCHAR(255) NOT NULL,
    iD int NOT NULL,
    username int NOT NULL,
    nationality VARCHAR9(255) NOT NULL,
    city    VARCHAR(255) NOT NULL
    CONSTRAINT UC_my_info(ID, username)
