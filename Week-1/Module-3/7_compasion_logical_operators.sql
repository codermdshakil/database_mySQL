-- create a database
CREATE DATABASE Collage;

USE Collage;

-- Create table using Collage database
CREATE TABLE Student(
	Roll CHAR(3) PRIMARY KEY,
	CSE INT,
    ME INT
);
 

-- Insert student in Student table
INSERT INTO Student(Roll, CSE, ME) VALUES ("101", 100, 60);
INSERT INTO Student(Roll, CSE, ME) VALUES ("102", 10, 70);
INSERT INTO Student(Roll, CSE, ME) VALUES ("103", 20, 50);
INSERT INTO Student(Roll, CSE, ME) VALUES ("104", 90, 95);



-- print specific roll marks total sum  
-- Arithmetic Operators
SELECT (CSE + ME), (CSE - ME), (CSE * ME), (CSE / ME), (CSE + ME)/2 , (CSE % 10)
from Student
WHERE Roll = "103";

-- Comparison Operators
SELECT (CSE > ME), (CSE <= ME), (CSE <> ME)
from Student;

-- Logical Operators
SELECT (CSE > ME) AND (CSE <= ME) OR (CSE <> ME)
from Student;




-- print all table data 
SELECT * From Student;

 

 
/*
Summary 

Comparison Operators
= Equal to
<> Not Equal
< Less then
> Greater then
<= Less then Or Equal
>= Greater then Or Equal

Logical Operators
AND -> Both Condition should true
OR -> At Least One condition should true
NOT -> Negates a condition


*/



 




