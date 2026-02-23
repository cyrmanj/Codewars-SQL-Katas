-- Kata: Finding Products Matching All Selected Tags
-- Difficulty: 7 kyu
-- Concepts: Grouping, IN Operator, Aggregate filtering, Handling duplicates
-- Platform: Codewars

select distinct(product_id)
from product_tags
where tag ='Electronics'
and product_id in (select product_id from product_tags where tag = 'Gadgets')
order by product_id desc;

--best practice for scalability:
select product_id
from product_tags
where tag in('Electronics','Gadgets')
group by product_id
having count(distinct tag)=2
order by product_id desc;
