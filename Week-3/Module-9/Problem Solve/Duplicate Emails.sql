
-- Problem Link : https://leetcode.com/problems/duplicate-emails/


SELECT EMAIL
FROM PERSON
GROUP BY EMAIL
HAVING COUNT(EMAIL) > 1;