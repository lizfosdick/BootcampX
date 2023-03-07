SELECT students.name as student, SUM(assignment_submissions.duration)/count(assignment_submissions.*) as average_assignment_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;