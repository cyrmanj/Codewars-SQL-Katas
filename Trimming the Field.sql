-- Kata: Trimming the Field
-- Difficulty: 5 kyu
-- Concepts: String Splitting
-- Platform: Codewars

select
id, 
name, 
split_part(characteristics, ',',1) as characteristic
from monsters
order by id