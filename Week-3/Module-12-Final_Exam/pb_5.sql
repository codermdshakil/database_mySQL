-- 5 Write an SQL query to list all students who are enrolled in more than two courses.
-- solution

SELECT s.StudentID, s.Name, COUNT(e.CourseID) AS CourseCount
FROM Student s
JOIN Enrollment e ON s.StudentID = e.StudentID
GROUP BY s.StudentID, s.Name
HAVING COUNT(e.CourseID) > 2;



