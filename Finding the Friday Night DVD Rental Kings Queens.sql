-- Kata: Finding the Friday Night DVD Rental Kings/Queens
-- Difficulty: 6 kyu
-- Concepts: DOW extraction, Time-Part Casting, Aggregate Functions, String Aggregation
-- Platform: Codewars

select
c.customer_id,
concat(c.first_name,' ',c.last_name) as customer_name,
count(distinct rental_id) as friday_rentals,
string_agg(to_char(r.rental_date, 'YYYY-MM-DD HH24:MI:SS'),', ' order by r.rental_date desc) as rental_dates
from customer c join rental r on r.customer_id = c.customer_id
where extract(dow from rental_date) = 5
and rental_date::time between '18:00:00' and '23:59:59'
group by c.customer_id, customer_name
order by friday_rentals desc, c.last_name
limit 50;