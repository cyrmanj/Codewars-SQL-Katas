-- Kata: SQL Basics: Top 10 customers by total payments amount
-- Difficulty: 6 kyu
-- Concepts: Joins and Data Aggregation, Window Functions, Data Type Precisio
-- Platform: Codewars

with cte as(
select c.customer_id, c.email, 
count(p.payment_id) as payments_count,
cast(sum(p.amount) as float) as total_amount,
rank() over(order by sum(p.amount) desc) as rnk
from customer c join payment p on p.customer_id = c.customer_id
group by c.customer_id, c.email)

select customer_id, email, payments_count, total_amount
from cte
where rnk <= 10
order by total_amount desc