USE company;

CREATE TABLE Employee(
 id INT PRIMARY KEY,
 Name VARCHAR(60) NOT NULL,
 Salary INT,
 JoinDate DATE,
 Age INT CHECK (Age >= 18)
);

-- insert data
INSERT INTO Employee(id, Name, Salary, JoinDate, Age) VALUES (1, "A", 50000, '2021-10-01', 40);
INSERT INTO Employee(id, Name, Salary, JoinDate, Age) VALUES (2, "B", 20000, '2023-10-01', 30);
INSERT INTO Employee(id, Name, Salary, JoinDate, Age) VALUES (3, "C", 10000, '2022-10-01', 20);
INSERT INTO Employee(id, Name, Salary, JoinDate, Age) VALUES (4, "D", 15000, '2025-10-01', 25);

-- Logical Operators
SELECT Name, Salary
FROM Employee
WHERE Age < 30 AND Salary > 12000;

SELECT Name, Salary
FROM Employee
WHERE Salary > 12000 OR (Age < 25 AND Salary > 10000) ;

/*
Logical Operators

AND -> Both Condition should true
OR -> At Least One condition should true
NOT -> Negates a condition

*/