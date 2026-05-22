-- Kata: Reduce My Fraction
-- Difficulty: 7 kyu
-- Concepts: Mathematical Number Theory, Arithmetic Operators, Scalar Functions
-- Platform: Codewars

select
numerator,
denominator,
(numerator / gcd(numerator,denominator)) as reduced_numerator, 
(denominator / gcd(numerator,denominator)) as reduced_denominator
from fraction
order by numerator, denominator asc