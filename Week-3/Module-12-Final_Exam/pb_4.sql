-- Write an SQL query to find the names of instructors who teach the most credits (total).
-- Solution

SELECT i.Name, SUM(c.Credits) AS TotalCredits
FROM Instructor i
JOIN Course c ON i.InstructorID = c.InstructorID
GROUP BY i.InstructorID, i.Name
ORDER BY TotalCredits DESC
LIMIT 1;


