
-- GROUP BY
-- প্রতি গ্রুপ এর মধ্যে যার  Salary Max ওইটা  Print কর 
SELECT DEPARTMENT_ID, MIN(salary), MAX(salary), FLOOR(AVG(salary)), COUNT(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- COUNT(*) - use to calculate row 

-- HAVING
-- group function এর  ওপর  Applied Condition
SELECT DEPARTMENT_ID, MIN(salary), MAX(salary), FLOOR(AVG(salary)), COUNT(*)
FROM EMPLOYEES
WHERE DEPARTMENT_ID != 20 -- use condition
GROUP BY DEPARTMENT_ID
HAVING MAX(salary) > 5000; -- GROUP FUNCTION
