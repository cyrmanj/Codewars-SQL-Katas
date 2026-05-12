-- Kata: Remove First and Last Character
-- Difficulty: 8 kyu
-- Concepts: String Indexing and Offsets, Character Extraction Logic
-- Platform: Codewars

select 
s,
substring(s, 2, length(s) - 2) as res
from removechar