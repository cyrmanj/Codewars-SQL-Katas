-- Kata: Film Category Ratings Breakdown
-- Difficulty: 6 kyu
-- Concepts: Window Functions, Aggregate-of-Aggregate Logic, Numeric Precision, Type Casting
-- Platform: Codewars

select
c.name as category_name,
f.rating as film_rating,
round(
  count(f.film_id)*100/sum(count(fc.category_id)) over(partition by c.name)
  ,3)::numeric as percentage
from film f join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
group by category_name, film_rating
order by category_name asc, percentage desc, film_rating asc