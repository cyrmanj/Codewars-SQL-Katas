-- Kata: Grouping Session Lengths in PostgreSQL
-- Difficulty: 7 kyu
-- Concepts: Data Bucketing, Grouping and Aggregation, String manipulation
-- Platform: Codewars

with cte as(
select
floor(length_seconds / 5) * 5 as bucket_start,
floor(length_seconds / 5) * 5 + 4 as bucket_end,
session_id
from sessions)

select 
concat(bucket_start, '-', bucket_end) as bucket,
count(session_id) as "count"
from cte
group by bucket
order by bucket asc