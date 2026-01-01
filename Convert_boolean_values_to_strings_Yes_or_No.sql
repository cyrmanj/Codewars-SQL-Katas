-- Kata: Convert boolean values to strings 'Yes' or 'No'.
-- Difficulty: 8 kyu
-- Concepts: Conditional logic
-- Platform: Codewars

select
bool,
case when bool = True then 'Yes'
else 'No'
end as res
from booltoword