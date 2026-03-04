-- Kata: Grasshopper - Terminal game move function
-- Difficulty: 8 kyu
-- Concepts: Arithmetic operators precedence
-- Platform: Codewars

select
position + (roll*2) as res
from moves
order by v.status_group desc;