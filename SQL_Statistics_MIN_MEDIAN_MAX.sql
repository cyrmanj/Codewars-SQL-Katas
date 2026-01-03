-- Kata: SQL Statistics: MIN, MEDIAN, MAX
-- Difficulty: 5 kyu
-- Concepts: Aggregate Functions
-- Platform: Codewars

select min(r.score) as min, percentile_cont(0.5) within group (order by r.score) as median, max(r.score) as max from student s inner join result r on s.id = r.id



