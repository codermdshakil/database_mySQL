
USE company;

CREATE TABLE Employee(
 id INT PRIMARY KEY,
 Name VARCHAR(60) NOT NULL,
 Doing VARCHAR(70),
 Age INT CHECK (Age >= 18),
 Salary INT
);

-- insert data
INSERT INTO Employee(id, Name,Doing, Age, Salary) VALUES (1, "A","Jr SWE", 20, 20000);
INSERT INTO Employee(id, Name,Doing, Age, Salary) VALUES (2, "B","Sr SWE", 30, 50000);
INSERT INTO Employee(id, Name,Doing, Age, Salary) VALUES (3, "C","Pr MGN", 40, 60000);
INSERT INTO Employee(id, Name,Doing, Age, Salary) VALUES (4, "D","Team Lead", 35, 55000);
INSERT INTO Employee(id, Name,Doing, Age, Salary) VALUES (5, "E","Sr SWE", 32, 52000);
 

-- IN  
-- the IN operator is used to filter data by matching a column's value against a list of specified values. It’s commonly used with the WHERE clause to check if a column’s value is one of several possible values, which makes it a cleaner and more readable alternative to multiple OR conditions.
SELECT Name , Salary
FROM Employee
WHERE id IN (1,2,3);

-- NOT IN
SELECT Name , Salary
FROM Employee
WHERE id NOT IN (2, 4); -- 2, 4 এই id এর  value গুলো  সারা দেখাও   তাহলে দেখাবে  1, 3, 5  id এর value

-- Like মানে    মত  value excete  same না হইলে ও  কাছাকাছি ও হয় দেখাও 
SELECT id, Name, Salary
FROM Employee
WHERE Doing LIKE ("%Sr%");

-- AS ব্যাবহার করা হয় output এর সময় Column এর title পরিবর্তন করে দেখার জন্য 
SELECT Name AS EmployeeName
FROM Employee;

-- Summary
-- IN, NOT IN, LIKE এগুলা ব্যাবহার করা হয় শুদু WHERE আ
-- AS ব্যাবহার করা হয় output এর সময় Column এর title পরিবর্তন করে দেখার জন্য 
