1, 2 Solution : 

CREATE DATABASE Collage;

USE Collage;

- -  Student table

CREATE TABLE Student(
    Roll CHAR(04) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60) UNIQUE,
    Age INT CHECK (Age >= 10)
);

-- Insert students
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("01", "Shakil Ahmed", "ahmed@gmail.com",19);
INSERT INTO Student (Roll, Name, Email,  Age) VALUES ("02", "Noyon Rahman", "noyon@gmail.com",20);
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("03", "Nadim Hassan", "nadim@gmail.com",21);
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("04", "Mahfuj", "mahfuj@gmail.com",17);
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("05", "Asraf", "asraf@gmail.com",18);


-- Create a library table with a foreign key

CREATE TABLE Library(
    BookName varchar(50) PRIMARY KEY,
    Who_Hired_Roll CHAR(4),
-- Implement foreign key using Student Roll primary key
   FOREIGN KEY (Who_Hired_Roll) REFERENCES Student(Roll)
);

INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("Atomic Habit", "02");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("Power of Now", "01");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("7 Habits", "03");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("Mens Search for Meaning", "05");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("How To Win", "04");

- fees table
CREATE TABLE fees (
   Roll CHAR(2),
   Name VARCHAR(50),
   Amount INT NOT NULL,
   PRIMARY KEY (Roll, Name)
);

INSERT INTO fees(Roll, Name, Amount) VALUES ("01", "Shakil Ahmed", 120);
INSERT INTO fees(Roll, Name, Amount) VALUES ("05", "Asraf", 150);
INSERT INTO fees(Roll, Name, Amount) VALUES ("02", "Noyon Rahman", 200);
INSERT INTO fees(Roll, Name, Amount) VALUES ("03", "Nadim Hassan", 220);
INSERT INTO fees(Roll, Name, Amount) VALUES ("04", "Mahfuj", 250);

-- Print table data 
SELECT * FROM Student;
SELECT * FROM Library;
SELECT * FROM fees;


3. Write the difference between data and information
Solution : 

Data: Raw, unprocessed facts and figures without context. Think of numbers, symbols, or observations in their rawest form. For example, a spreadsheet of customer transactions with dates, amounts, and names.

Information: Data that’s been organized, processed, and interpreted to add meaning and context. It’s data transformed into insights. In our example, analyzing customer transactions to find spending trends over time turns data into valuable information for decision-making.

Summary: Data is the raw input; information is the meaningful output that helps drive business actions and strategies.


-- 4 Solution :

SET SQL_SAFE_UPDATES = 0; -- save mode of

-- 5 Solution : 

SELECT distinct Department
FROM Company;

-- 6 Solution : 

SELECT LastName
FROM Company
ORDER BY Age desc;

-- 7 Solution : 

SELECT LastName
FROM Company
WHERE (Age > 30 AND department = "Marketing");

-- 8 Solution : 

SELECT * FROM Company;

-- 9 Solution: 

SELECT EmployeeId, FirstName,  LastName, Age, Department
FROM Company
WHERE LastName LIKE("%son%");

-- 10 Solution : 

SELECT EmployeeId, FirstName, LastName, Age, Department
FROM Company
WHERE Department = "Engineering";


