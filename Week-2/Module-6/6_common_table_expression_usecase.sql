
--  এমন এমন  employee কে দেখাও জারা  IT department er avg salary থেকে  বেশি  এবং marketing department এর  max salary থেকে কম  salary পায়  তাদেরকে  show  কর 

WITH AVG_IT_SALARY AS
(
-- IT departments avg salary
		SELECT AVG(SALARY) AS SAL1
		FROM EMPLOYEES
		WHERE DEPARTMENT_ID = 60
),
 MAX_MARKETING_SALARY AS -- Don't need to use WITH two times
(
-- Marketing departments MAX salary
		SELECT MAX(SALARY) AS SAL2
		FROM EMPLOYEES
		WHERE DEPARTMENT_ID = 60
)

SELECT * 
FROM EMPLOYEES
WHERE SALARY >  (SELECT SAL1 FROM AVG_IT_SALARY) AND SALARY < (SELECT SAL2 FROM MAX_MARKETING_SALARY);

