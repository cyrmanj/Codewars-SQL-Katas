-- Kata: Order Ratio for Each Product
-- Difficulty: 7 kyu
-- Concepts: Window Functions, Aggregate Precision & Casting
-- Platform: Codewars

select
product_id,
count (*) as count,
round(count (*) *100/sum(count (*)) over(),2)::numeric as ratio
from orders
group by product_id
order by product_id asc;