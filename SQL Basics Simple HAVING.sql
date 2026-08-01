-- Kata: SQL Basics: Simple HAVING 
-- Difficulty: 6 kyu
-- Concepts: Aggregation, filtering
-- Platform: Codewars

select age as age, 
count(id) as total_people
from people
group by age
having count(id) >= 10;