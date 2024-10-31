
USE programmingHero;

-- System 1 to set constraints [best way]
CREATE TABLE Student(
 Roll CHAR(04) PRIMARY KEY,
 Name VARCHAR(50) NOT NULL,
 Email VARCHAR(60) UNIQUE,
 Address VARCHAR(255) DEFAULT("Ranigonj"),
 Age INT CHECK (Age >= 10)
);

-- Inserta students
INSERT INTO Student (Roll, Name, Email, Address, Age) VALUES ("01", "Shakil Ahmed","ahmed@gmail.com","",10);
INSERT INTO Student (Roll, Name, Email, Address, Age) VALUES ("02", "Noyon Rahman","noyon@gmail.com","Ranigonj",12);
INSERT INTO Student (Roll, Name, Email, Address, Age) VALUES ("03", "Nadim Hassan","nadim@gmail.com","Fulbaria",15);
INSERT INTO Student (Roll, Name, Email,Age) VALUES ("04", "Mahfuj","mahfuj@gmail.com",14);

-- Print student table
-- 1. Show all data of table  
SELECT * from Student;

-- 2. Show specific  table Column data of Student table
SELECT Name, Email  FROM Student;

-- 3. Show column data based on Condition
SELECT * FROM Student WHERE age > 12;