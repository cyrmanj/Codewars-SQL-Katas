-- Kata: Easy SQL ASCII Converter
-- Difficulty: 7 kyu
-- Concepts: Character-to-Numeric Mapping, Scalar Function Behavior
-- Platform: Codewars

select
id,
ascii(name) as name,
birthday,
ascii(race) as race
from demographics;