-- Example 1
SELECT GREATEST(20, 10, 30);
-- 30

-- Example 2
SELECT GREATEST(200, 10, 30);
-- 200

-- Example 3
SELECT name, weight, GREATEST(30, 2 * weight)
FROM products;

-- Example 4
SELECT LEAST(1000, 20, 50, 100);

-- Example 5
SELECT name, price, LEAST(price * 0.5, 400)
FROM products;

-- Example 6
SELECT 
	name,
	price, 
	CASE
                       WHEN price > 600 THEN 'high'
	       WHEN price > 300 THEN 'medium'
	       ELSE 'cheap'
	END
FROM products;



