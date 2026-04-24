-- Kata: Fake Binary
-- Difficulty: 8 kyu
-- Concepts: String Decomposition and Recomposition, Character Mapping
-- Platform: Codewars

select 
x,
translate(x,'0123456789', '0000011111') as res
from fakebin;