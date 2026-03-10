-- Kata: SQL easy regex extraction
-- Difficulty: 7 kyu
-- Concepts:  Regular expressions
-- Platform: Codewars

select name, 
greeting, 
substring(greeting from '#([0-9]+)') as user_id
from greetings