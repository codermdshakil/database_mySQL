
-- Write a query to find the department names and the names of the managers for each department.

SELECT  d.DEPARTMENT_NAME, e.FIRST_NAME AS MANAGER_NAME
FROM DEPARTMENTS d
LEFT JOIN EMPLOYEES e ON d.MANAGER_ID = e.MANAGER_ID;
