
-- SELECT * 
-- FROM DEPARTMENTS;

-- SELECT * 
-- FROM JOB_HISTORY;

-- SELECT * 
-- FROM JOBS;

-- SELECT * 
-- FROM LOCATIONS;

-- SELECT * 
-- FROM REGIONS;


-- Show specific column
-- SELECT  first_name, last_name
-- FROM EMPLOYEES;


-- WHERE সরথ দাও্যের জন্য
-- SELECT *
-- FROM EMPLOYEES
-- WHERE DEPARTMENT_ID = 60 AND SALARY > 8000;

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60 OR SALARY > 8000;

-- Arithmetic Operator
SELECT 5+ 4;
SELECT 10 - 6;
SELECT 3 * 5;
SELECT 25/5;

SELECT FIRST_NAME,DEPARTMENT_ID, SALARY, SALARY+10000
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 100 OR SALARY > 0;

-- Comparison Operator
SELECT * 
FROM EMPLOYEES
WHERE  SALARY >= 6000;

-- DISTINCT - Removes duplicate values
SELECT DISTINCT JOB_ID
FROM EMPLOYEES;

-- ORDER BY (assending order and desseding order)
SELECT * 
FROM EMPLOYEES
ORDER BY SALARY asc; -- show data based on assending order salary

SELECT * 
FROM EMPLOYEES
ORDER BY SALARY desc; -- show data based on dessending order salary

-- LIMIT - show data limited

SELECT * 
FROM EMPLOYEES
LIMIT 10;

-- LIMIT AND OFFSET

SELECT * 
FROM EMPLOYEES
ORDER BY SALARY asc
LIMIT 10, 5;

-- LIKE
SELECT *
FROM EMPLOYEES
WHERE LAST_NAME LIKE "%EE%";


-- AS
SELECT FIRST_NAME AS NAME, SALARY AS 'CURR SALARY', SALARY + 10000 AS INCREADED_SALARY
FROM EMPLOYEES;


-- Summary Practice
-- SELECT
-- WHERE
-- Arithmetic , Comparison, Logical Operators 
-- ORDER BY
-- LIMIT
-- OFFSET
-- LIKE 
-- AS


