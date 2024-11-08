
--  1.  Second Highest Salary  কত   ? এবং কে পায় ? 
-- [This is not efficient]

SELECT * 
FROM EMPLOYEES
WHERE SALARY = (SELECT DISTINCT SALARY
				FROM EMPLOYEES
				ORDER BY SALARY DESC
				LIMIT 1
				OFFSET 1
                );

-- Get second Max Highest salary
SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE SALARY <  (SELECT MAX(SALARY)
				FROM EMPLOYEES);


-- this is efficient  code to get second max highest salary
SELECT * 
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY)
				FROM EMPLOYEES
				WHERE SALARY <  (SELECT MAX(SALARY)
				FROM EMPLOYEES));






