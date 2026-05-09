-- Kata: Consolidating Sales and Returns Data
-- Difficulty: 7 kyu
-- Concepts: Set Inclusion (Join Types), Composite Key Logic, Handling Nulls and Data Presence
-- Platform: Codewars

select
coalesce(t1.product_id, t2.product_id) product_id,
t1.quantity sale_qty,
t2.quantity return_qty,
coalesce(t1.date,t2.date) date
from table_sales t1 full outer join table_returns t2 on t2.product_id = t1.product_id
and t1.date = t2.date
order by coalesce(t1.product_id, t2.product_id) asc, coalesce(t1.date, t2.date) asc 
