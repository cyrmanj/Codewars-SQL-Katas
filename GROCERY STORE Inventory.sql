
-- Kata: SQL: GROCERY STORE: Inventory
-- Difficulty: 7 kyu
-- Concepts: Basic data selection, filtering
-- Platform: Codewars

select id, name, stock
from products
where producent = 'CompanyA' and stock <= 2
order by id