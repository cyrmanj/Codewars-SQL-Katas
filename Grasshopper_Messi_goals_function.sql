-- Kata: Grasshopper - Messi goals function
-- Difficulty: 8 kyu
-- Concepts: Arithmetic addition across multiple columns
-- Platform: Codewars

select 
  la_liga_goals + champions_league_goals + copa_del_rey_goals as res
from goals;