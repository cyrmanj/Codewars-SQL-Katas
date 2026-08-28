-- Kata: GROCERY STORE Logistic Optimisation
-- Difficulty: 7 kyu
-- Concepts: Aggregation, Distinct Counting, Data Grouping
-- Platform: Codewars

select
producer,
count (distinct id) as count_products_types
from products
group by producer
order by count_products_types desc, producer asc