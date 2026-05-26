-- Kata: Splitting and Listing Unique Characters from a String Column 
-- Difficulty: 7 kyu
-- Concepts: String Splitting & Tokenization, Set Generation / Row Generation
-- Platform: Codewars

select
product_id, 
regexp_split_to_table(features, '') as feature
from products
order by product_id