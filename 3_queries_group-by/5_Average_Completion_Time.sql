SELECT students.name AS student, sum(assignment_submissions.duration) / count(assignment_submissions.*) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL 
GROUP BY student
ORDER BY average_assignment_duration DESC;