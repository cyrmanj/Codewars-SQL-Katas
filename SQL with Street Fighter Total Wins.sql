-- Kata: SQL with Street Fighter Total Wins
-- Difficulty: 7 kyu
-- Concepts:  Joins, Filtering, Agreggations
-- Platform: Codewars

select f.name, sum(f.won) as won, sum(f.lost) as lost
from fighters f join winning_moves w on w.id = f.move_id
where w.move not in ('Hadoken','Shouoken','Kikoken')
group by f.name
order by sum(f.won) desc
limit 6;