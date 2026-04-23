-- Kata: Ten Years of Talent: Analyzing Employee Flux at ABC Kata Solutions
-- Difficulty: 7 kyu
-- Concepts: Data Normalization, Handling Density & Gaps, Null Handling
-- Platform: Codewars

with years as(
select generate_series(2014,2023) as year
),

joins as(
select extract(year from joined_date) as year,
count(*) as joined_quantity
from employees
group by 1
),
leaves as(
select extract(year from left_date) as year,
count(*) as left_quantity
from employees
group by 1  
)

select 
y.year,
coalesce(j.joined_quantity, 0) as joined_quantity,
coalesce(l.left_quantity, 0) as left_quantity
from years y
left join joins j on j.year = y.year
left join leaves l on l.year = y.year
order by y.year asc;