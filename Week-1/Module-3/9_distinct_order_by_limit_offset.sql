
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
 


-- DISTINCT - remove duplicate 
SELECT DISTINCT Doing 
From Employee;

-- ORDER BY print ages assending order using acs
SELECT  Name, Age
From Employee
ORDER BY Age asc;

-- ORDER BY print ages  using acs
SELECT  Name, Age
From Employee
ORDER BY Age desc;

-- LIMIT and OFFSET use 
SELECT Name, Age
FROM Employee
WHERE Age > 10
LIMIT 3, 2; -- 3 means OFFSET মানে ৩ টা বাদ দাও  , 2  means দুই টা  দেখাও  

-- Summary
-- DISTNICT - output এর সময় Duplicate value remove করে দেখায়
-- ORDER BY - ব্যাবহার করে intiger value Assending and Dessending order a Print করা যায়
-- OFFSET - ব্যাবহার করে কত value এর পরের value গুলা দেখতে চাই তা বলে দেই
-- LIMIT - ব্যাবহার করে কত গুলা দেখতে চাই  
-- shortcut of use OFFSET + LIMIT 
-- LIMIT 3, 2; [3 means OFFSET, 2 means LIMIT]

