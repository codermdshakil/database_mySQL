
-- Using the dummydb, write an SQL query to get the third-highest salary in the employees table.

SELECT MAX(SALARY)
FROM employees
WHERE SALARY < (SELECT MAX(SALARY)
					FROM employees
					WHERE SALARY < (SELECT MAX(SALARY)
									FROM EMPLOYEES));
