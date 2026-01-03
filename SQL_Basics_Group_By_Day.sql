-- Kata: SQL Basics: Group By Day
-- Difficulty: 5 kyu
-- Concepts: GROUP BY with Date Aggregation
-- Platform: Codewars

SELECT 
cast (created_at as Date) as day, 
description, 
count (id) as count
FROM events
where name = 'trained'
group by day, description
order by day;