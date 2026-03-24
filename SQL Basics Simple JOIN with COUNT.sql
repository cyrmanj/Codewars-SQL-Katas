-- Kata: SQL Basics Simple JOIN with COUNT
-- Difficulty: 7 kyu
-- Concepts: Count, Grouping
-- Platform: Codewars

select
p.id, p.name,
count(t.id) as toy_count
from people p join toys t on t.people_id = p.id
group by p.id, p.name