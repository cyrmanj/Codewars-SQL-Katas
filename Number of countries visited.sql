-- Kata: Number of countries visited
-- Difficulty: 7 kyu
-- Concepts:  Joins, Grouping, Count
-- Platform: Codewars

select p.name, count(distinct v.country_id) as countries_visited
from people p left join visits v on v.person_id = p.id
left join countries c on c.id = v.country_id
group by p.name
order by countries_visited desc, p.name asc;