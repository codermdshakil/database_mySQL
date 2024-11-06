
-- Example of subquery
-- SUBQUER example
SELECT *
FROM EMPLOYEES
WHERE SALARY < (SELECT SALARY
				FROM Employees
				WHERE EMPLOYEE_ID = 144
			    );

