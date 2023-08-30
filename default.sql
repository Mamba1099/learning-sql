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