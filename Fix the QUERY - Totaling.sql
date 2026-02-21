-- Kata: SQL Bug Fixing: Fix the QUERY - Totaling
-- Difficulty: 6 kyu
-- Concepts: Date Truncation & Type Casting, Grouping
-- Platform: Codewars

SELECT 
  s.transaction_date::date as day,
  d.name as department,
  COUNT(s.id) as sale_count
  FROM sale s
    left JOIN department d on d.id = s.department_id
  group by day, d.name
  order by day, d.name
