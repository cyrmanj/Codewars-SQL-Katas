-- Kata: Drug Dosages with Dual Unit Measurements
-- Difficulty: 7 kyu
-- Concepts: Handling Nullable Data, Conditional Logic, String Manipulation
-- Platform: Codewars

select
dr.record_id,
d.drug_name, 
dr.drug_amount,
case when u2.unit_name is not null then concat(u1.unit_name, '/', u2.unit_name)
else u1.unit_name end as dose_units
from
dose_records dr join drugs d on d.drug_id = dr.drug_id
join units u1 on u1.unit_id = dr.drug_unit_id 
left join units u2 on u2.unit_id = dr.check_unit_id
order by d.drug_name asc, dr.record_id asc