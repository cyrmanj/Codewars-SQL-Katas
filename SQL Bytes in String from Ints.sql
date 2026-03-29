-- Kata: SQL Bytes in String from Ints
-- Difficulty: 7 kyu
-- Concepts: Type Casting, Measuring Data Size
-- Platform: Codewars

select
octet_length(number1::text) as octnum1,
octet_length(number2::text) as octnum2,
octet_length(number3::text) as octnum3,
octet_length(number4::text) as octnum4, 
octet_length(number5::text) as octnum5
from numbers