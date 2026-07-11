-- Kata: First Normal Form
-- Difficulty: 7 kyu
-- Concepts: Database Normalization, First Normal Form, DDL
-- Platform: Codewars

create table dishes as
select 
id as restaurant_id,
unnest(string_to_array(menu, ',')) as dish
from restaurants;

alter table restaurants
drop column menu;
