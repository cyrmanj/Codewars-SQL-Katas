
-- Kata: SQL: Right and Left
-- Difficulty: 7 kyu
-- Concepts: string manipulation
-- Platform: Codewars

select left(project, commits) as project, 
right(address, contributors) as address
from repositories