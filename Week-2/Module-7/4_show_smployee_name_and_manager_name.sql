-- Show employee name and Manager Name

SELECT M.FIRST_NAME AS Employee_Name,E.FIRST_NAME AS Manager_Name
FROM EMPLOYEES AS M
	JOIN EMPLOYEES AS E
    ON E.EMPLOYEE_ID = M.MANAGER_ID;
