====================================================

Example 1

====================================================
(
SELECT *
FROM products
ORDER BY price DESC
LIMIT 4
)
UNION
(
SELECT * 
FROM products
ORDER BY price / weight DESC
LIMIT 4
);
====================================================

Example 2

====================================================
(
SELECT *
FROM products
ORDER BY price DESC
LIMIT 4
)
UNION ALL
(
SELECT * 
FROM products
ORDER BY price / weight DESC
LIMIT 4
);
====================================================

Example 3

====================================================
SELECT * FROM products
UNION
SELECT * FROM products;
====================================================