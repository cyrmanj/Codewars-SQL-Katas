-- Kata: Conditional Count
-- Difficulty: 6 kyu
-- Concepts: Conditional Aggregation, Date Manipulation
-- Platform: Codewars

select extract(month from payment_date) as month,
count(payment_id) as total_count,
sum(amount) as total_amount,
count(case when staff_id = 1 then 1 end)::int as mike_count,
sum(case when staff_id = 1 then amount else 0.0 end)::numeric as mike_amount,
count(case when staff_id = 2 then 1 end)::int as jon_count,
sum(case when staff_id = 2 then amount else 0.0 end)::numeric as jon_amount
from payment
group by month
order by month asc;