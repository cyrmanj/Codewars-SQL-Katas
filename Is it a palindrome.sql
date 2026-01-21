
-- Kata: Is it a palindrome?
-- Difficulty: 8 kyu
-- Concepts: String functions
-- Platform: Codewars

-- # write your SQL statement here: you are given a table 'ispalindrome' with column 'str', 
-- return a table with column 'str' and your result in a column named 'res'.
select str,
case when reverse(lower(str)) = lower(str) then True else False end as res
from ispalindrome