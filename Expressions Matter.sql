-- Kata: Expressions Matter
-- Difficulty: 8 kyu
-- Concepts: Built-in Scalar Functions
-- Platform: Codewars

select
greatest(
  a+b+c,
  a*b*c,
  a+b*c,
  (a+b)*c,
  a*b+c,
  a*(b+c)
) as res
from expression_matter
