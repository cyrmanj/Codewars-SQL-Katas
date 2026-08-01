-- Kata: SQL Bug Fixing: Fix the JOIN
-- Difficulty: 6 kyu
-- Concepts: Joins, aggregations, mathematical operations, data type casting, numeric formatting
-- Platform: Codewars

SELECT 
  j.job_title,
  round(SUM(j.salary) / COUNT(p.id)::numeric,2)::float as average_salary,
  COUNT(p.id) as total_people,
  round(SUM(j.salary)::numeric,2)::float as total_salary
  FROM people p
    JOIN job j on j.people_id = p.id
  GROUP BY j.job_title
  ORDER BY average_salary desc