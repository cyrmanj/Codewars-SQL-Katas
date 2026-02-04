
-- Kata: SQL: Calculating Batting Average
-- Difficulty: 6 kyu
-- Concepts: Arithmetic Operators, Data Type Casting, Conditional Logic
-- Platform: Codewars

select player_name, games, 
cast(round(hits*1.0/nullif(at_bats,0),3)as varchar) as batting_average
from yankees
where at_bats >= 100
order by (hits*1.0/nullif(at_bats,0)) desc  