-- Kata: Filtering Films by Special Features in PostgreSQL Part 1
-- Difficulty: 7 kyu
-- Concepts: PostgreSQL Array Handling/Containment
-- Platform: Codewars

select film_id, title, special_features
from film
where 
( 'Trailers' = any(special_features))
and ('Deleted Scenes' = any(special_features))
order by title asc, film_id asc