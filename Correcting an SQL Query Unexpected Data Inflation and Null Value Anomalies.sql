-- Kata: Correcting an SQL Query Unexpected Data Inflation and Null Value Anomalies
-- Difficulty: 7 kyu
-- Concepts: Cartesian explosion, null handling, aggregation
-- Platform: Codewars

with total_votes as(
select votes.content_id, topics.id, sum(votes.rating) as total_rating
from topics
join votes on votes.content_id = topics.id
group by topics.id, votes.content_id
),

total_visits_ as(
select visits.content_id, topics.id, count(distinct visits.id) as total_visits
from topics 
join visits on visits.content_id = topics.id
group by topics.id, visits.content_id
)  
  
select topics.id,
coalesce(v.total_visits,0) as total_visits,
coalesce(vt.total_rating,0) as total_rating
from topics
left join total_visits_ v on topics.id = v.content_id
left join total_votes vt on topics.id = vt.content_id
order by topics.id desc;