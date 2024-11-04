-- ALTER

CREATE DATABASE Test;
USE Test;

CREATE TABLE Employees(
 Id INT PRIMARY KEY,
 Name VARCHAR(50) NOT NULL,
 Salary INT,
 Email VARCHAR(60)
);

INSERT INTO Employees VALUES (1, "Shakil", 5000);
INSERT INTO Employees VALUES (2, "Noyon", 6000);

-- Add new column in table
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(255);


-- Delete a column from a table
ALTER TABLE Employees
DROP COLUMN Salary;

-- Modify a Column from table
ALTER TABLE Employees
MODIFY COLUMN Email decimal;

-- ALTER TABLE Employees
-- MODIFY COLUMN Email VARCHAR(120);

SELECT * FROM EMPLOYEES;




 