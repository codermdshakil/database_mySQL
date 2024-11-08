
-- কোন কোন  employee manager এর  মত কাজ করে 

SELECT * 
FROM EMPLOYEES AS EMP 
WHERE JOB_ID = (SELECT JOB_ID 
				FROM EMPLOYEES AS MGR
				WHERE EMP.MANAGER_ID  = MGR.EMPLOYEE_ID);
                