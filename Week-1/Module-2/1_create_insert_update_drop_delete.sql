
-- create database
CREATE DATABASE programmingHero;

-- using programminghero database
USE programmingHero;

-- table create
CREATE table student(
ROLL CHAR(4) PRIMARY KEY,
Name VARCHAR(50),
Marks double
);

-- insert value in table
INSERT INTO student (ROLL, Name, Marks) values ("0002", "Shakil", 100);
INSERT INTO student(ROll, name, marks) values (0003, "Noyon Rahman", 100.4);
INSERT INTO student(roll, name, marks) values ("0004", "NadimHassan", 80.5);


-- Update existing values
SET SQL_SAFE_UPDATES = 0; -- save mode of 
UPDATE  student  
SET Name = "Shakil Ahmed"
WHERE ROll = "0002";

-- SET SQL_SAFE_UPDATES = 1; -- safe mode on 


-- Delete full table 
SET SQL_SAFE_UPDATES = 0; 
DELETE FROM Student;

-- delete specific 
SET SQL_SAFE_UPDATES = 0; 
DELETE FROM student
WHERE ROll = "0002";


 
-- print table 
SELECT * from student;

-- Summary
-- CREATE - cereate database
-- INSERT - Insert a data in existing database table
-- UPDATE - Update existing specific data
-- DELETE - Delete database full table and specific data
-- DROP - delete Database
-- SQL_SAFE_UPDATES = 0 - to of safe mode  when we update and delete data from table

