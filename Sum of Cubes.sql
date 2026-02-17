-- Kata: Sum of Cubes
-- Difficulty: 7 kyu
-- Concepts: Mathematical Translation, Arithmetic Precision
-- Platform: Codewars

select
n,
-- mathematical formula for sum of cubes: (n(n+1) /2)^2
((n::bigint *(n+1)/2)^2)::bigint as res
from cubes
order by n asc;