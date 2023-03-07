SELECT avg(total_duration) as average_total_duration
FROM
(SELECT cohorts.name as cohort, SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id 
GROUP BY cohorts.name
) as total_durations;