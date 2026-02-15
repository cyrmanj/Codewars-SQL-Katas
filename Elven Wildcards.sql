-- Kata: Elven Wildcards
-- Difficulty: 8 kyu
-- Concepts: String Concatenation, Wildcards
-- Platform: Codewars

select
concat(initcap(firstname), ' ', initcap(lastname)) as shortlist
from Elves
where firstname like '%tegil%'
or lastname like '%astar%'