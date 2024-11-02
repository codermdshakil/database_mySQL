
CREATE DATABASE Collage;

USE Collage;

CREATE TABLE Student(
    Roll CHAR(04) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60) UNIQUE,
    Age INT CHECK (Age >= 10)
);

-- Inserta students
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("01", "Shakil Ahmed","ahmed@gmail.com",19);
INSERT INTO Student (Roll, Name, Email,  Age) VALUES ("02", "Noyon Rahman","noyon@gmail.com",20);
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("03", "Nadim Hassan","nadim@gmail.com",21);
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("04", "Mahfuj","mahfuj@gmail.com",17);
INSERT INTO Student (Roll, Name, Email, Age) VALUES ("05", "Asraf","asraf@gmail.com",18);


-- create a library table with foreign key
CREATE TABLE Library(
    BookName varchar(50) PRIMARY KEY,
    Who_Hired_Roll CHAR(4),
-- Implement foreign key using Student Roll primary key
   FOREIGN KEY (Who_Hired_Roll) REFERENCES Student(Roll)
);

INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("Atomic Habit", "02");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("Power of Now", "01");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("7 Habits" , "03");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("Mens Search for Meaning", "05");
INSERT INTO Library(BookName, Who_Hired_Roll) VALUES ("How To Win", "04");


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
