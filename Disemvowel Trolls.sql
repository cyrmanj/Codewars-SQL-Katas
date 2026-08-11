-- Kata: Disemvowel Trolls
-- Difficulty: 7 kyu
-- Concepts: String Manipulation, case sensitivity, pattern matching
-- Platform: Codewars

select
str,
translate(str, 'AEIOUaeiou','') res
from disemvowel