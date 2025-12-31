-- Kata: SQL Basics: Simple GROUP BY
-- Difficulty: 7 kyu
-- Concepts: GROUP BY
-- Platform: Codewars

select count(name) people_count,age from people group by age;