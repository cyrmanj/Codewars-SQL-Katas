-- Kata: Simple JOIN and RANK
-- Difficulty: 6 kyu
-- Concepts: Window function, joins
-- Platform: Codewars

select p.id, p.name,
count(s.sale) as sale_count,
rank() over(order by count(s.sale) desc) as sale_rank
from people p join sales s on s.people_id = p.id
group by p.id, p.name;