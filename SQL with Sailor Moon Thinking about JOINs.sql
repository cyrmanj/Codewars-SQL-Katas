-- Kata: SQL with Sailor Moon: Thinking about JOINs...
-- Difficulty: 7 kyu
-- Concepts: Joins, Handling Unmatched/Null Data
-- Platform: Codewars

select
sa.senshi_name sailor_senshi,
sa.real_name_jpn real_name,
c.name cat,
sc.school 
from sailorsenshi sa left join cats c on c.id = sa.cat_id
left join schools sc on sc.id = sa.school_id