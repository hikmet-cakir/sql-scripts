- Example 1			    
SELECT name, price, (
	SELECT MAX(price) FROM products;	
)
FROM products
WHERE price > 867;



-- Example 2
SELECT name, price, (
	SELECT price FROM products WHERE id = 3
)
FROM products
WHERE price > 867;


-- SUCCESS


-- Example 3
SELECT name, price, (
	SELECT price FROM products WHERE id = 3
) AS id_3_price
FROM products
WHERE price > 867;


-- SUCCESS


-- Example 4
SELECT name, price, price / (
    SELECT MAX(price) FROM phones
) AS price_ratio
FROM phones


-- Example 5
SELECT name, price / weight AS price_weight_ratio
FROM products;

-- Example 6
SELECT name, price_weight_ratio 
FROM (
	SELECT name, price / weight AS price_weight_ratio
	FROM products
)
WHERE price_weight_ratio > 5;

-- ERROR subquery in FROM must have an alias

-- Example 7
SELECT name, price_weight_ratio 
FROM (
	SELECT name, price / weight AS price_weight_ratio
	FROM products
) AS p
WHERE price_weight_ratio > 5;

-- SUCCESS


-- Example 8
SELECT MAX(price)
FROM products;

-- Example 9
SELECT * 
FROM  (SELECT MAX(price) FROM products) AS p;

-- SUCCESS


-- Example 10
SELECT user_id, COUNT(*)
FROM orders
GROUP BY user_id;


-- Example 11
SELECT user_id, AVG(COUNT(*))
FROM orders
GROUP BY user_id;

-- ERROR aggregate functions calls cannot be nested


-- Example 12
SELECT p.order_count
FROM 
(SELECT user_id, COUNT(*)
FROM orders
GROUP BY user_id
) AS p;


-- Example 13
SELECT order_count
FROM 
(SELECT user_id, COUNT(*)
FROM orders
GROUP BY user_id
) AS p;


-- Example 14
SELECT AVG(order_count)
FROM 
(SELECT user_id, COUNT(*)
FROM orders
GROUP BY user_id
) AS p;


-- Example 15
SELECT MAX(price) AS max_average_price
FROM (
SELECT manufacturer, AVG(price) AS price
FROM phones
GROUP BY manufacturer
) AS p



