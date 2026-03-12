-- Kata: Filtering Films by Special Features in PostgreSQL Part 4
-- Difficulty: 6 kyu
-- Concepts:  Set Expansion, Array Membership, Aggreation Logic
-- Platform: Codewars

select
film_id, title, special_features
from film 
where 
(
select unnest(special_features) as feature
from film
group by feature
order by count(*) desc
limit 1
) = any(special_features)
-- ^ to check if a specific value exists inside the array
order by title asc, film_id asc;
