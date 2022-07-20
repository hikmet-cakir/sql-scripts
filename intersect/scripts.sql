====================================================

Example 1

====================================================
(
   SELECT *
   FROM products
   ORDER BY price DESC
   LIMIT 4
)
INTERSECT
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
INTERSECT ALL
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);
====================================================
 