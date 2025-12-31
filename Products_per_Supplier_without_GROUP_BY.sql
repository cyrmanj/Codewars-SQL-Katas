-- Kata: Easy SQL: Products per Supplier without GROUP BY
-- Difficulty: 7 kyu
-- Concepts: WINDOW FUNCTIONS
-- Platform: Codewars

SELECT DISTINCT supplier_id, COUNT(id) OVER(PARTITION BY supplier_id) AS total_products
FROM products
ORDER BY supplier_id DESC
