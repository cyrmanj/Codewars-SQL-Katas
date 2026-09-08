-- Kata: Uncovering ABC Kata Solutions' Most Extravagant Departmental Expenses
-- Difficulty: 7 kyu
-- Concepts: Substring & Pattern Matching, Date Part Extraction, Grouping & Aggregation, String & Currency Formatting
-- Platform: Codewars

select 
d.department_name,
trim(to_char(sum (e.amount), 'FM$999,999,999.00')) as total_questionable_expenses
from expenses e join departments d
on d.department_id = e.department_id
where lower(description) like '%confetti%' 
or lower(description) like '%glitter%' 
or lower(description) like '%golden toilet%'
or lower(description) like '%massage chair%'
or lower(description) like '%video game%'
or lower(description) like '%karaoke%'
or extract(month from date) = 4
and extract(day from date) = 1
or extract(month from date) = 5
and extract(day from date) = 21
group by d.department_name
order by sum(e.amount) desc, d.department_name desc;select 
d.department_name,
trim(to_char(sum (e.amount), 'FM$999,999,999.00')) as total_questionable_expenses
from expenses e join departments d
on d.department_id = e.department_id
where lower(description) like '%confetti%' 
or lower(description) like '%glitter%' 
or lower(description) like '%golden toilet%'
or lower(description) like '%massage chair%'
or lower(description) like '%video game%'
or lower(description) like '%karaoke%'
or (extract(month from date) = 4
and extract(day from date) = 1)
or (extract(month from date) = 5
and extract(day from date) = 21)
group by d.department_name
order by sum(e.amount) desc, d.department_name desc
limit 5;