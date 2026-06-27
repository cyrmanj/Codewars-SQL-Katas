-- Kata: Give Me 10 Rows, Please!
-- Difficulty: 7 kyu
-- Concepts: Union all, generate_series(), data prioritization and sorting, row limiting
-- Platform: Codewars

with original_data as(
  select a, b, 1 as priority
  from sample_table
  order by a asc
),
placeholder_data as(
  select 0 as a, '-' as b, 2 as priority
  from generate_series(1,10)
)

select a,b
from (
  select * from original_data
  union all
  select * from placeholder_data
  ) as combined
  order by priority, a
  limit 10