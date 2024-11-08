SELECT * 
FROM EMPLOYEES AS EMP 
-- এইখানে আমার সালারই  যা ম্যানেজার সালারি এর সাথে Compare করা  হচ্ছে 
WHERE SALARY > (SELECT SALARY 
				FROM EMPLOYEES AS MGR
				WHERE EMP.MANAGER_ID  = MGR.EMPLOYEE_ID); --  আমার ম্যানেজার এর সালারি 
