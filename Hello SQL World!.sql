
-- Kata: Hello SQL World!
-- Difficulty: 7 kyu
-- Concepts: Data Definition Language, Schema Definition
-- Platform: Codewars

create table hello( 
"Greeting" Varchar(255));

insert into hello("Greeting")
values('hello world!');

select * from hello
