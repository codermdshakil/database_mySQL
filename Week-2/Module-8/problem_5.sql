
-- What is a Common Table Expression (CTE)? Write an example query using CTE to show the names of employees whose salary is higher than the average salary.



WITH AverageSalary AS (
    SELECT AVG(Salary) AS avg_salary
    FROM Employees
)

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE SALARY > (SELECT *
FROM AverageSalary)