-- Kata: SQL with Harry Potter Sorting Hat Comparators
-- Difficulty: 7 kyu
-- Concepts: Boolean logic and operators, operator precedence 
-- Platform: Codewars

select id, name, quality1, quality2
from students
--slytherin:
where (quality1 = 'evil' and quality2 = 'cunning')
--gryffindor:
or (quality1 = 'brave' and quality2 != 'evil')
--ravenclaw:
or (quality1 = 'studious' or quality2 = 'intelligent')
--hufflepuff:
or (quality1 = 'hufflepuff' or quality2 = 'hufflepuff')
order by id asc;