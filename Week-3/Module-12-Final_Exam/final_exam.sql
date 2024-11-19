
CREATE DATABASE PHITRON;

USE PHITRON;

CREATE TABLE Instructor (	
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15),	
    Department VARCHAR(50)	
);	

CREATE TABLE Course (	
    CourseID INT AUTO_INCREMENT PRIMARY KEY,	
    Title VARCHAR(255) NOT NULL,	
    Credits INT NOT NULL,	
    InstructorID INT,	
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)	
);	

CREATE TABLE Student (	
    StudentID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15)	
);

CREATE TABLE Enrollment (	
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,	
    StudentID INT,	
    CourseID INT,	
    EnrollmentDate DATE NOT NULL,	
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),	
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)	
);	


INSERT INTO Instructor (Name, Email, Phone, Department) VALUES
('Alice Johnson', 'alice.johnson@example.com', '123-456-7890', 'Computer Science'),
('Bob Smith', 'bob.smith@example.com', '234-567-8901', 'Mathematics'),
('Carol Lee', 'carol.lee@example.com', '345-678-9012', 'Physics'),
('David Brown', 'david.brown@example.com', '456-789-0123', 'Chemistry'),
('Eva Green', 'eva.green@example.com', '567-890-1234', 'Engineering');


INSERT INTO Course (Title, Credits, InstructorID) VALUES
('Introduction to Programming', 3, 1),
('Advanced Mathematics', 4, 2),
('Physics I', 3, 3),
('Chemistry Fundamentals', 4, 4),
('Engineering Design', 5, 5);

INSERT INTO Student (Name, Email, Phone) VALUES
('John Doe', 'john.doe@example.com', '789-012-3456'),
('Jane Smith', 'jane.smith@example.com', '890-123-4567'),
('Mike Brown', 'mike.brown@example.com', '901-234-5678'),
('Sara White', 'sara.white@example.com', '012-345-6789'),
('Tom Black', 'tom.black@example.com', '123-456-7899');


INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2024-11-01'),
(2, 2, '2024-11-02'),
(3, 3, '2024-11-03'),
(4, 4, '2024-11-04'),
(5, 5, '2024-11-05');

SELECT * FROM INSTRUCTOR;
SELECT * FROM COURSE;
SELECT * FROM STUDENT;
SELECT * FROM ENROLLMENT;