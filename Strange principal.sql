-- Kata: Strange principal
-- Difficulty: 7 kyu
-- Concepts: Number Theory, Data Types and Casting
-- Platform: Codewars

select
n,
floor(sqrt(n))::integer as res
from numofopenlockers