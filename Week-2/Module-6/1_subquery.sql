
-- Example of subquery
-- SUBQUER example
SELECT *
FROM EMPLOYEES
WHERE SALARY < (SELECT SALARY
				FROM Employees
				WHERE EMPLOYEE_ID = 144
			    );

-- who take higher salary using subquery
SELECT * 
FROM EMPLOYEES
WHERE SALARY = (
    -- get highest salary
	SELECT MAX(SALARY)
	FROM EMPLOYEES
);
