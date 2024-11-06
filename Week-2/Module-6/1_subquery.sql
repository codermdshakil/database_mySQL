
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

-- SUBQUERY
-- Marketing department a কারা কারা কাজ করে তাদের SALARY AVG, MIN, MAX
SELECT AVG(SALARY )
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (
	SELECT DEPARTMENT_ID
	FROM departments
	WHERE DEPARTMENT_NAME = "Marketing"
);

-- IT Department এ কয়জন Employees আছে 
-- Count IT departments employees
SELECT COUNT(*) AS Members
FROM EMPLOYEES


WHERE DEPARTMENT_ID = (
	SELECT DEPARTMENT_ID
	FROM DEPARTMENTS
	WHERE DEPARTMENT_NAME = "IT"
);

