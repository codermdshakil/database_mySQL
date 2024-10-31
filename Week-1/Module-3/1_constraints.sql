
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



-- system 2
CREATE TABLE student(
    Roll CHAR(4),
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60),
    Address VARCHAR(255),
    Age INT,
    
    -- constraints here 
    PRIMARY KEY(Roll),
    UNIQUE (Email),
    CHECK (Age >= 10)
);

-- System 3
CREATE TABLE student(
    Roll CHAR(04),
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60),
    Address VARCHAR(255),
    Age INT,
    
    -- constraints here  [with constraint name]
    constraint pk_rule PRIMARY KEY(Roll),
    constraint unique_rule UNIQUE (Email),
    constraint check_rule CHECK (Age >= 10)
);

-- create a library table with foreign key
CREATE TABLE Library(
    BookName varchar(50) PRIMARY KEY,
    Who_Hired_Roll CHAR(4),

-- Implement foreign key using Student Roll primary key
FOREIGN KEY (Who_Hired_Roll) REFERENCES Student(Roll)

);

-- Compozite Key Example
CREATE TABLE Course(
	CourseName VARCHAR(10),
    University VARCHAR(10),
    Credit INT,
    
    -- implement compozite Primary Key 
    PRIMARY KEY (CourseName, University)
);


-- print student table  
SELECT * from Student;

-- Summary of constraints 
-- ------------------------
-- PRIMARY KEY - unique + primary key data
-- UNIQUE - unique data
-- NOT NULL - this field value can't null
-- CHECK - for using condition (aget >= 18)
-- DEFAULT - Set Default value
-- FOREIGN KEY - using primary key
-- Compozite Key - using two field name 


