-- Kata: Regex String to Table
-- Difficulty: 7 kyu
-- Concepts: Data Transformation and Parsing
-- Platform: Codewars

select
regexp_split_to_table(text, '[aeiouAEIOU]') as results
from random_string