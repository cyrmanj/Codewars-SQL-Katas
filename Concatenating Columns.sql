-- Kata: Concatenating Columns
-- Difficulty: 7 kyu
-- Concepts: Concatenation
-- Platform: Codewars

select 
prefix || ' ' || first || ' ' || last || ' '||  suffix as title
from names