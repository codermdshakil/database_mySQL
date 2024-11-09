
-- Show employee name and Manager Name

SELECT E.FIRST_NAME, M.FIRST_NAME
FROM EMPLOYEES AS E
	JOIN EMPLOYEES AS M
    ON E.EMPLOYEE_ID = M.MANAGER_ID;