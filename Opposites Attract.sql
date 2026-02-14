-- Kata: Opposites Attract
-- Difficulty: 8 kyu
-- Concepts: Modulo Arithmetic, Conditional Branching
-- Platform: Codewars

select
flower1,
flower2,
case when flower1 % 2 != flower2 % 2 then True
else False end as res
from love