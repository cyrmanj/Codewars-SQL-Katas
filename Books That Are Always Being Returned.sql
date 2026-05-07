-- Kata: Books That Are Always Being Returned
-- Difficulty: 7 kyu
-- Concepts: One-to-Many Relationships & Data Granularity, Aggregation, Conditional Logic
-- Platform: Codewars

select
b.book_id,
b.title
from
books b inner join loans l on l.book_id = b.book_id
group by b.book_id, b.title
--filter out books that has even a single null value:
having count(case when l.return_date is null then 1 end) = 0
order by b.book_id desc;
