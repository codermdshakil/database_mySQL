Database Final Exam Solution DOC


-- Solution 1: ERD 

-- Solution 2: 

INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate)
SELECT 5, CourseID, CURDATE()
FROM Course
ORDER BY Credits DESC
LIMIT 1;



-- Solution 3:

UPDATE Course
SET InstructorID = 4
WHERE CourseID = 3;


-- Solution 4:

SELECT i.Name, SUM(c.Credits) AS TotalCredits
FROM Instructor i
JOIN Course c ON i.InstructorID = c.InstructorID
GROUP BY i.InstructorID, i.Name
ORDER BY TotalCredits DESC
LIMIT 1;

-- Solution 5:

SELECT s.StudentID, s.Name, COUNT(e.CourseID) AS CourseCount
FROM Student s
JOIN Enrollment e ON s.StudentID = e.StudentID
GROUP BY s.StudentID, s.Name
HAVING COUNT(e.CourseID) > 2;



-- Solution 6: ERD 



-- Solution 7:

Different Between GROUP BY and ORDER BY:

GROUP BY and ORDER BY are both used for organizing query results

GROUP BY:  It groups rows with the same values into summary rows, like "total" or "average". COUNT(), MAX(), SUM(), AVG() etc

Example:
SELECT department, COUNT(*) 
FROM employees 
GROUP BY department;

ORDER BY:  It is used to sort the result’s  ascending order and descending order using ASC(for ascending order), DESC(for descending order)

Example:
SELECT name, salary
FROM employees 
ORDER BY salary DESC;


-- Solution 8:

SELECT MAX(Salary) AS SecondHighestSalary 
FROM Instructor 
WHERE Salary < (SELECT MAX(Salary) FROM Instructor);

-- Solution 9:

ALTER TABLE Course
ADD CONSTRAINT fk_instructor 
FOREIGN KEY (InstructorID) 
REFERENCES Instructor(InstructorID) 
ON DELETE CASCADE; 

If you use ON DELETE CASCADE, if an instructor is deleted, all the related courses in the Course table will also be deleted automatically.


-- Solution 10:

I faced the challenge of deleting a foreign key without a primary key. After some time, I understood that if I needed to delete a FOREIGN KEY, I should On SAFE MODE; alternatively, I could also use ON DELETE CASCADE.
