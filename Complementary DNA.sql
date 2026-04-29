-- Kata: Complementary DNA
-- Difficulty: 7 kyu
-- Concepts: One-to-One Character Mapping, String Manipulation
-- Platform: Codewars

select
dna,
translate(dna, 'ATCG', 'TAGC') as res
from dnastrand;