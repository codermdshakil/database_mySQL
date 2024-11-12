
-- What is a Self Join? Provide an example using the employees table to list employees who share the same manager ID, showing only their first names and manager IDs.


SELECT * FROM EMPLOYEES;

SELECT  E1.FIRST_NAME AS FIRST_NAME, E1.MANAGER_ID AS MANAGER_ID
FROM EMPLOYEES AS E1
	JOIN EMPLOYEES AS E2
		ON E1.EMPLOYEE_ID = E2.MANAGER_ID
