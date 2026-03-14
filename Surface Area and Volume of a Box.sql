-- Kata: Surface Area and Volume of a Box
-- Difficulty: 8 kyu
-- Concepts:  Arithmethic
-- Platform: Codewars

select width, height, depth,
2*(width * depth + width * height + depth * height)as area,
width*height*depth as volume
from box
order by area asc, volume asc, width asc, height asc
