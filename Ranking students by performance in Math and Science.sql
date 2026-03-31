-- Kata: Ranking students by performance in Math and Science
-- Difficulty: 6 kyu
-- Concepts: CTEs, Aggregation, Window Functions, Ranking
-- Platform: Codewars

with scores as(
select s.id as student_id, s.name,
sum(c.score) as total_score 
from students s join courses c on c.student_id = s.id
where course_name in ('Math', 'Science')
group by s.id, s.name
)

select 
row_number() over(order by total_score desc, student_id asc) as rank,
student_id, name, total_score
from scores
order by rank asc, student_id asc;