-- Kata: Role Analysis with XOR Logic
-- Difficulty: 7 kyu
-- Concepts: "Many-to-Many" Junction Table Schema, Row Aggregation, Boolean Aggregation, Exclusive OR (XOR) Logic
-- Platform: Codewars

select
username,
bool_or(role = 'internal') as internal,
bool_or(role = 'admin') as admin
from user_roles
where role in ('internal', 'admin')
group by username
--instead of xor:  one must be true and the other false but not equal:
having bool_or(role = 'internal') != bool_or(role = 'admin')
order by username asc;
