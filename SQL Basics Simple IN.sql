-- Kata: SQL Basics Simple IN
-- Difficulty: 6 kyu
-- Concepts: IN 
-- Platform: Codewars

select
id, 
name
from departments 
where id in (select department_id from sales where price > 98.00)