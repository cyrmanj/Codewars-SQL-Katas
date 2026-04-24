-- Kata: Returning Strings
-- Difficulty: 8 kyu
-- Concepts: String Literals and Identifiers, concatenation
-- Platform: Codewars

select 
concat('Hello, ', name, ' how are you doing today?') as greeting
from person

select 
y.year,
coalesce(j.joined_quantity, 0) as joined_quantity,
coalesce(l.left_quantity, 0) as left_quantity
from years y
left join joins j on j.year = y.year
left join leaves l on l.year = y.year
order by y.year asc;