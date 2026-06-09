-- Kata: Centered pentagonal number
-- Difficulty: 7 kyu
-- Concepts: Mathematical Modeling, Conditional Logic, Sequence Recognition
-- Platform: Codewars

select n,
case when n <= 0 then -1
else (5*n*n - 5*n + 2)/2 end as res
from pentagonal