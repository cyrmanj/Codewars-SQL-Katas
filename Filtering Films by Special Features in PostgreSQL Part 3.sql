-- Kata: Filtering Films by Special Features in PostgreSQL Part 3
-- Difficulty: 7 kyu
-- Concepts: PostgreSQL Array Handling, Boolean Logic
-- Platform: Codewars

select film_id, title, special_features
from film
where 
-- first block to include one or the other:
(
('Deleted Scenes' =any(special_features))
or
('Behind the Scenes') =any(special_features))
-- second block to exclude when both are present:
and not(
'Deleted Scenes' = any(special_features)
and 'Behind the Scenes' = any(special_features)
)
-- third block to exclude commentaries
and not ('Commentaries' = any(special_features))
order by title asc, film_id asc;