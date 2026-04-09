-- Kata: GROCERY STORE Real Price!
-- Difficulty: 7 kyu
-- Concepts: Data Type casting, arithmetic
-- Platform: Codewars

select
name,
weight,
price,
round(
  (price::numeric*1000)/ nullif(weight,0)::numeric,2)::float as price_per_kg
from products
order by price_per_kg asc, name asc;
