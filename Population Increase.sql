-- Kata: Population Increase
-- Difficulty: 6 kyu
-- Concepts: Data Type Manipulation, Casting, Filtering
-- Platform: Codewars

with pop_2020 as(
select country, population as population_2020, year
from world_population
where year = 2020),

pop_2000 as(
select country, population as population_2000, year
from world_population
where year = 2000
)

select p1.country, concat(round((p1.population_2020 - p2.population_2000) / 1000000.0,2),' M') as population_increase
from pop_2020 p1 join pop_2000 p2 on p2.country = p1.country
order by (p1.population_2020 - p2.population_2000) desc
limit 5