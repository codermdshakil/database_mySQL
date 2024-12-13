
-- Join tables without JOIN Query
SELECT  EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME 
FROM EMPLOYEES, DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

-- JOIN table using JOIN  [Better]
SELECT EMPLOYEES.FIRST_NAME,  DEPARTMENTS.DEPARTMENT_NAME 
FROM EMPLOYEES 
	JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;


-- Another way
SELECT EMPLOYEES.FIRST_NAME,  DEPARTMENTS.DEPARTMENT_NAME 
FROM EMPLOYEES 
	JOIN DEPARTMENTS USING (DEPARTMENT_ID); -- use this just when two table comapare column same otherwise use above approch
    
    