-- Kata: Top-Scoring Students Across All Subjects
-- Difficulty: 7 kyu
-- Concepts: Window Functions (Partitioning), Universal Qualification, Sorting and Tie-Handling
-- Platform: Codewars

with cte as(
select
s.student_id,
s.student_name,
sj.subject_name, 
m.mark_rate,
rank() over(partition by sj.subject_name order by m.mark_rate desc) as ranking
from students s join marks m on m.student_id = s.student_id
join subjects sj on sj.subject_id = m.subject_id
)

select
student_id,
student_name
from cte
group by student_id, student_name
having max(ranking) = 1
order by student_id desc;