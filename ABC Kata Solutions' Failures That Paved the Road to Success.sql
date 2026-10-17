-- Kata: ABC Kata Solutions' Failures That Paved the Road to Success
-- Difficulty: 7 kyu
-- Concepts: Joins, Aggregations & Grouping, CTEs, conditional filtering, data formatting and type conversion
-- Platform: Codewars

with project_totals as(
select 
p.project_id,
p.project_name,
p.completion_status,
sum(b.component_value) as total_budget
from projects p left join budget_components b
on b.project_id = p.project_id
group by p.project_id, p.project_name, p.completion_status
)
select 
project_id,
project_name, 
completion_status,
to_char(total_budget, '$FM999,999,999.00') as total_budget
from project_totals 
where completion_status != 'Completed'
and total_budget > (
  select avg(total_budget) from project_totals)
order by project_name asc;