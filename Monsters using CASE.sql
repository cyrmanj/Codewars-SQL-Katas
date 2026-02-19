-- Kata: Monsters using CASE
-- Difficulty: 7 kyu
-- Concepts: Conditional
-- Platform: Codewars

select 
t.id,
t.heads,
b.legs,
t.arms,
b.tails,
case when t.heads > t.arms or b.tails > b.legs then 'BEAST'
else 'WEIRDO' end as species
from top_half t join bottom_half b on b.id = t.id
order by species;