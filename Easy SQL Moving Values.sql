-- Kata: Easy SQL: Moving Values
-- Difficulty: 7 kyu
-- Concepts: Data Type Casting
-- Platform: Codewars

select
length(name) as id,
length(legs::text) as name,
length(arms::text) as legs,
length(characteristics) as arms,
length(id::text) as characteristics 
from monsters