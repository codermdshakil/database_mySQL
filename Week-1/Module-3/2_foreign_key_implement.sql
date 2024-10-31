
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
INSERT INTO Student (Roll, Name, Email,Age) VALUES ("04", "Mahfuj","mahfuj@gmail.com",15);

-- create a library table with foreign key
CREATE TABLE Library(
    BookName varchar(50) PRIMARY KEY,
    Who_Hired_Roll CHAR(4),

-- Implement foreign key using Student Roll primary key
    FOREIGN KEY (Who_Hired_Roll) REFERENCES Student(Roll)

);

-- print student table  
SELECT * from Student;
