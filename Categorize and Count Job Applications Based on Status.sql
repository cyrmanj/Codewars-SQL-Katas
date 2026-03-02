-- Kata: Categorize and Count Job Applications Based on Status
-- Difficulty: 7 kyu
-- Concepts: Data Persistence (Zero Result), Join, Aggregations, Conditional
-- Platform: Codewars

select 
v.status_group,
count(a.application_status) as application_num
from (
values ('Approved'), ('Rejected')) as v(status_group)
left join applications a on v.status_group =
(case when application_status <= 5 then 'Rejected'
else 'Approved' end)
group by v.status_group
order by v.status_group desc;