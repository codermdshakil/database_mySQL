
use dummydb;

-- SubQuery
SELECT * FROM  EMPLOYEES;

SELECT AVG(SALARY) AS Average_Salary
FROM EMPLOYEES;
 
-- Subquery implemention
-- Find employee who earn more then average salary
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (
	SELECT AVG(SALARY) AS Average_Salary
	FROM EMPLOYEES
);

-- GROUP BY, HAVING
-- Count the number of employees in each job title
SELECT * FROM employees;

SELECT JOB_ID,COUNT(FIRST_NAME) AS COUNT  --  COUNT(*) For row
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING COUNT > 1 -- Add condition in group [if job_title count 1 then skip him if more then one then show]
ORDER BY COUNT ASC; -- we can use table functionality after group by and having


-- Sub query with Group By
-- Find departments where the average salary is higher then the overall average salary
select department_id, (
	select department_name 
    from departments  
    where department_id = employees.department_id ), avg(salary) as Average_Salary
from employees
group by department_id
having Average_Salary >  (select avg(salary) as average_salary from employees);

-- CTE (Common Table Expression)
With DepartmentAverage AS(
	select department_id, avg(salary) as average_salary
	from employees
	group by department_id
)

select department_id,(
	select department_name 
    from departments
    where departments.department_id = DepartmentAverage.department_id
    ),average_salary
from DepartmentAverage
where (select avg(salary) as average_salary from employees);



