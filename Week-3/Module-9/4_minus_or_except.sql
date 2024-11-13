
-- EXCEPT / MINUS  Returns rows from the first SELECT statement that are not in the second SELECT statement.

SELECT * 
FROM EMPLOYEES
WHERE SALARY > 10000

EXCEPT

SELECT * 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 100;

