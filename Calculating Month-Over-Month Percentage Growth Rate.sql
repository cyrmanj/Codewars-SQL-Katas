-- Kata: Calculating Month-Over-Month Percentage Growth Rate
-- Difficulty: 4 kyu
-- Concepts: Time-Series Aggregation, Window Functions, CTEs, Data Types Handling
-- Platform: Codewars

with months_and_posts as(
select 
  date_trunc('month', created_at)::date as month,
  count(id) as posts
  from posts
  group by month
)
select
month as date, 
posts as count,
case when lag(posts) over(order by month) is null then null
else
concat(
  round( 
    (posts -lag(posts) over(order by month))::numeric/
    lag(posts) over(order by month) * 100,1
  ),'%'
) end as percent_growth
from months_and_posts
order by date;