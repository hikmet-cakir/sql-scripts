-- Example 1
SELECT name, 
     (
	SELECT	COUNT(*)	   |
	FROM orders AS o1	   | <--------------------------------------------------
	WHERE o1.product_id = p1.id   |
     ) AS num_orders
FROM products AS p1


-- Example 2
SELECT (
	SELECT MAX(price) FROM products
);

-- It must contain only one single value

-- Example 3
SELECT (
	SELECT MAX(price) FROM products
) / (
	SELECT MIN(price) FROM products
);

-- It must contain only one single value