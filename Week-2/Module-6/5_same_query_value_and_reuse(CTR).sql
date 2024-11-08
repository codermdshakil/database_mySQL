-- Common Table Expression (CTE)


WITH TMP AS
(
SELECT * 
FROM EMPLOYEES
LIMIT 5
)

SELECT * FROM TMP;

-- Basically it works like first we save a value in a variable and then we use this variable in another query
