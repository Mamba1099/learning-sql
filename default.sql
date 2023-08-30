-- setting a default value for a column
CREATE TABLE Persons (
    ID int NOT NULL,
    City varchar(255) DEFAULT 'Sandnes'
); 

-- +-----------+--------------+------+-----+---------+-------+
-- | Field     | Type         | Null | Key | Default | Extra |
-- +-----------+--------------+------+-----+---------+-------+
-- | ID        | int          | NO   |     | NULL    |       |
-- | City      | varchar(255) | YES  |     | Sandnes |       |
-- +-----------+--------------+------+-----+---------+-------+

-- altering table and setting default value
CREATE TABLE info (
    ID int NOT NULL,
    City varchar(255)
);

-- +-------+--------------+------+-----+---------+-------+
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | ID    | int          | NO   |     | NULL    |       |
-- | City  | varchar(255) | YES  |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+
ALTER TABLE info
ALTER city SET DEFAULT 'Nairobi';

-- +-------+--------------+------+-----+---------+-------+
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | ID    | int          | NO   |     | NULL    |       |
-- | City  | varchar(255) | YES  |     | Nairobi |       |
-- +-------+--------------+------+-----+---------+-------+