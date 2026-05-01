-- Kata: SQL Basics Simple FULL TEXT SEARCH
-- Difficulty: 6 kyu
-- Concepts: Document Vectorization, Query Parsing, Match Operator, Data Concatenation
-- Platform: Codewars

select *
from product
where to_tsvector(name || '' || name) @@ to_tsquery('Awesome');

