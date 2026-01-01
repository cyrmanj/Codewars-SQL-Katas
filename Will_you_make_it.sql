-- Kata: Will you make it?

-- Difficulty: 8 kyu
-- Concepts: Conditional logic
-- Platform: Codewars

select 
distance_to_pump,
mpg,
fuel_left,
case when
  mpg * fuel_left >= distance_to_pump then True
  else False
end as res
from zerofuel