
-- Write an SQL query to insert a new enrollment record for a student (e.g., StudentID 5) into the course with the highest credit hours.
-- solution

INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate)
SELECT 5, CourseID, CURDATE()
FROM Course
ORDER BY Credits DESC
LIMIT 1;
