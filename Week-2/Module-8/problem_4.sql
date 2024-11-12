
-- Write a query to show the department names and the number of employees in each department.


SELECT d.DEPARTMENT_NAME, COUNT(e.Employee_Id) AS Number_of_Employees
FROM DEPARTMENTS d
LEFT JOIN EMPLOYEES e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME;
