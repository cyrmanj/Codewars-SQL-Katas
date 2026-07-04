-- Kata: Count a Spiral
-- Difficulty: 6 kyu
-- Concepts: Set-Based Operations (Over Loops), Algebraic Expressions
-- Platform: Codewars

select 
n,
((n+1) * (n+1)) / 2 - 1 as res
from spiral
order by n asc;