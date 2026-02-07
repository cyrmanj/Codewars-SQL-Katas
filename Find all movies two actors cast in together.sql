
-- Kata: SQL: Find all movies two actors cast in together
-- Difficulty: 5 kyu
-- Concepts: Relational Division, Aggregate Filtering
-- Platform: Codewars

select f.title
from film f left join film_actor a on a.film_id = f.film_id
where a.actor_id in (105, 122)
group by f.title
having count(distinct a.actor_id) = 2
order by f.title asc