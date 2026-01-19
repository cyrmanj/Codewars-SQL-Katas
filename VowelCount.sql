-- Kata: SQL Basics: VowelCount
-- Difficulty: 7 kyu
-- Concepts: Regex
-- Platform: Codewars

select 
str, 
length(regexp_replace(str, '[^aeiou]', '', 'g')) as res
from getcount