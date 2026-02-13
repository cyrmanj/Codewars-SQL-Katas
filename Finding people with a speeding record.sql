-- Kata: Finding people with a speeding record
-- Difficulty: 7 kyu
-- Concepts: Joins, Aggregations
-- Platform: Codewars

select 
p.id as person_id, 
p.birthdate,
coalesce(sum(r.speed_delta),0) as total_speed_delta
from People p left join Records r on r.person_id = p.id
group by p.id, p.birthdate
order by p.id asc;