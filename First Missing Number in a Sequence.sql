-- Kata: First Missing Number in a Sequence
-- Difficulty: 8 kyu
-- Concepts: Window Functions, Conditional Logic, Hnadling Null Values
-- Platform: Codewars

with cte as(
select
case when lag(num, 1)  over(order by num) - num < -1 then num - 1 end as missing_number
from data)

select missing_number
from cte
where missing_number is not null
limit 1