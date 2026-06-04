-- Kata: Using Window Functions To Get Top N per Group
-- Difficulty: 5 kyu
-- Concepts: Window Functions, Handling Null Values
-- Platform: Codewars

with ranked as(
select
c.id as category_id,
c.category,
p.title,
p.views,
p.id as post_id,
row_number()
  over(partition by c.id order by p.views desc, p.id asc) as rank
from categories c left join posts p on
p.category_id = c.id
)
select
category_id, 
category,
title,
views, 
post_id
from 
ranked
where rank <= 2 or rank is null
order by category asc, views desc, post_id asc;