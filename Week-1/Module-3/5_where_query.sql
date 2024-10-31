
-- create a database
CREATE DATABASE Collage;

USE Collage;

-- Create table using Collage database
CREATE TABLE Student(
	Roll CHAR(3) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(4) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(60) 
);

-- Insert student in Student table
INSERT INTO Student(Roll, Name, Phone,Email,Address) VALUES ("101", "Rahim", "017","r@gmail.com", "R");
INSERT INTO Student(Roll, Name, Phone,Email,Address) VALUES ("102", "Kahim", "018","k@gmail.com", "Ka");
INSERT INTO Student(Roll, Name, Phone,Email,Address) VALUES ("103", "Rayhan", "016","ray@gmail.com", "Ray");
INSERT INTO Student(Roll, Name, Phone,Email,Address) VALUES ("104", "Rimon", "013","ri@gmail.com", "ka");
INSERT INTO Student(Roll, Name, Phone,Email,Address) VALUES ("105", "Noyon", "015","noyon@gmail.com", "Ranigonj");

-- Show data using WHERE Query based on Specific Condition
-- Rahim এর সকল data show কর।
SELECT * 
FROM Student 
WHERE Name = "Kahim";

-- যার  Roll 104 তার ফোন নাম্বার কত  ?
SELECT Phone  From Student
WHERE Roll = "104";

-- Summary
-- WHERE is basically used to show data based on Specific Condition
