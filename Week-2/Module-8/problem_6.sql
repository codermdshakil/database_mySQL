
-- Write a query to display the names of employees who earn a salary less than the employee "Steven King".


SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE SALARY < (SELECT SALARY
				FROM EMPLOYEES
				WHERE FIRST_NAME = "Steven" AND LAST_NAME = "King")