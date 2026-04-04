-- Kata: Refactoring SQL Queries part 1 (removing UNION)
-- Difficulty: 7 kyu
-- Concepts: Conditional logic, deduplication
-- Platform: Codewars

SELECT DISTINCT city_name 
FROM stations 
WHERE city_name LIKE 'A%'
or city_name LIKE 'E%'
or city_name LIKE 'I%'
or city_name LIKE 'O%'
or city_name LIKE 'U%'
ORDER BY city_name ASC;