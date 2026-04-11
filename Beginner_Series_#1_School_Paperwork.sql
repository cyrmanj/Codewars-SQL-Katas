-- Kata: Beginner Series #1 School Paperwork
-- Difficulty: 8 kyu
-- Concepts: Conditional logic
-- Platform: Codewars

select
n,
m,
case when
  n <= 0 or m <= 0 then 0
  else n*m
end as res
from paperwork
