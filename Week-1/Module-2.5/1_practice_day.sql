-- create database
CREATE DATABASE Company;

USE Company;

-- create a table of employee 
CREATE table Employee (
 EmployeeId CHAR(2) PRIMARY KEY,
 EmployeeName VARCHAR(50),
 EmployeeSalary INT,
 JoiningDate TIMESTAMP
);

INSERT INTO Employee(EmployeeId, EmployeeName, EmployeeSalary, JoiningDate) VALUES ("01", "Shakil", 10000, current_date());
INSERT INTO Employee(EmployeeId, EmployeeName, EmployeeSalary, JoiningDate) VALUES ("02", "Noyon Rahman", 12000, current_date());
INSERT INTO Employee(EmployeeId, EmployeeName, EmployeeSalary, JoiningDate) VALUES ("03", "Nadim", 15000, current_date());

-- update employee 1
UPDATE  Employee
SET  EmployeeName = "Shakil Ahmed"
WHERE EmployeeId = "01";

-- delete one employee
DELETE FROM Employee
WHERE EmployeeId = "03";




-- print table of employee 
SELECT * from Employee;
 

