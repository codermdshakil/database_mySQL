
-- Problem Link : https://leetcode.com/problems/employees-earning-more-than-their-managers/


SELECT EMP.NAME AS Employee
FROM EMPLOYEE AS EMP, EMPLOYEE AS MGR
WHERE EMP.MANAGERID = MGR.ID AND EMP.SALARY > MGR.SALARY