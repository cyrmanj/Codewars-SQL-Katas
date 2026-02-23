-- Kata: Length based SELECT with LIKE
-- Difficulty: 7 kyu
-- Concepts: Fixed-Length Wildcard Matching, Pattern Construction 
-- Platform: Codewars

select
first_name,
last_name
from names
where first_name like('______%')
