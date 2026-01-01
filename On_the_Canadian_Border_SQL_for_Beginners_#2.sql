-- Kata: Collect Tuition (SQL for Beginners #4)
-- Difficulty: 8 kyu
-- Concepts: Logical exclusion
-- Platform: Codewars

select name, country from travelers where country not in ('USA', 'Canada', 'Mexico')

