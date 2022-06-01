-- Example 1
SELECT *
FROM products
ORDER BY price DESC
LIMIT 4;

-- Example 2
SELECT * 
FROM products
ORDER BY price / weight DESC
LIMIT 4;

-- Example 3

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

-- Example 4

(
SELECT *
FROM products
ORDER BY price DESC
LIMIT 4
)
UNION ALL -- Allows duplicate rows.
(
SELECT * 
FROM products
ORDER BY price / weight DESC
LIMIT 4
);

-- UNION is used for combine queries' results.

-- Example 5

(
SELECT *
FROM products
ORDER BY price DESC
LIMIT 4;
)
UNION ALL -- Allows duplicate rows. 

SELECT * 
FROM products
ORDER BY price / weight DESC
LIMIT 4; 


-- ERROR! invalid UNION/INTERSECT/EXCEPT ORDER BY clause


-- Example 6
SELECT * FROM products
UNION
SELECT * FROM products;

-- SUCCESS, It's not a problem.

-- Example 7
SELECT name FROM products
UNION
SELECT price FROM products;

-- ERROR! UNION types character varying and integer cannot be matched

-- Example 8
SELECT name FROM products
UNION
SELECT price as name FROM products;

-- ERROR! UNION types character varying and integer cannot be matched

-- Example 9
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


-- Example 10
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


-- Example 11
(
 SELECT *
 FROM products
 ORDER BY price DESC
 LIMIT 4
)
EXCEPT
(
 SELECT * 
 FROM products
 ORDER BY price / weight DESC
 LIMIT 4
);


-- Example 12
SELECT manufacturer 
FROM phones
WHERE price < 170 
UNION
SELECT manufacturer 
FROM phones 
GROUP BY manufacturer
HAVING COUNT(*) > 2;