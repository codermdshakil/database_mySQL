
-- 8 Given a table Instructor with a Salary column, write an SQL query to find the second-highest salary among instructors.



SELECT MAX(Salary) AS SecondHighestSalary 
FROM Instructor 
WHERE Salary < (SELECT MAX(Salary) FROM Instructor);
