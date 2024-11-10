-- SubQuery

SELECT * FROM  EMPLOYEES;

SELECT AVG(SALARY) AS Average_Salary
FROM EMPLOYEES;
 
-- Subquery implemention
-- Find employee who earn more then average salary
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (
	SELECT AVG(SALARY) AS Average_Salary
	FROM EMPLOYEES
);

-- GROUP BY, HAVING
-- Count the number of employees in each job title
SELECT * FROM employees;

SELECT JOB_ID,COUNT(FIRST_NAME) AS COUNT  --  COUNT(*) For row
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING COUNT > 1 -- Add condition in group [if job_title count 1 then skip him if more then one then show]
ORDER BY COUNT ASC; -- we can use table functionality after group by and having


