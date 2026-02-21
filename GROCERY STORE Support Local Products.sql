-- Kata: GROCERY STORE: Support Local Products
-- Difficulty: 7 kyu
-- Concepts: Grouping, IN Operator
-- Platform: Codewars

select count(name) as products,
country
from products
where country in ('United States of America','Canada')
group by country
order by count(name) desc;

