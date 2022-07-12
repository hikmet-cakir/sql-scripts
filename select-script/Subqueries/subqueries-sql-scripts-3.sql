Example	1
SELECT user_id
FROM orders
WHERE product_id = 3|


Example 2
SELECT first_name
FROM users
JOIN (
 SELECT user_id FROM orders WHERE product_id = 3
) AS o
ON o.user_id = users.id;


Example 3
SELECT first_name
FROM users
JOIN orders
ON orders.user_id = users.id
WHERE orders.product_id = 3;


Example 4
SELECT id
FROM products
WHERE price / weight > 300;


Example 5
SELECT id
FROM orders
WHERE product_id IN (
  SELECT id FROM products WHERE price / weight > 50
);


Example 6
SELECT AVG(price)
FROM products

Example 7
SELECT name
FROM products
WHERE price > (
   SELECT AVG(price) FROM products	
);
								

Example 8
SELECT name, price
FROM phones
WHERE price > (SELECT price FROM phones WHERE name = 'S5620 Monte');	



-- Example 9
SELECT name
FROM products
WHERE price < 100

-- Example 10
SELECT name, department
FROM products
WHERE department NOT IN (
  SELECT department FROM products WHERE price < 100
);


-- Example 11
SELECT name, department, price
FROM products
WHERE price > ALL (
	SELECT price FROM products WHERE department = 'Industrial'
);


Note : SOME is actually an alias for ANY
SOME == ANY

-- Example 12
SELECT name, department, price
FROM products
WHERE price > SOME (
	SELECT price
	FROM products
	WHERE department = 'Industrial';	
);


-- Example 13
SELECT name
FROM phones
WHERE price > ALL (
   SELECT price FROM phones WHERE manufacturer = 'Samsung'
)


-- Example 14
SELECT name, department, price
FROM products AS p1
WHERE p1.price = (
  SELECT MAX(price)
  FROM products AS p2
  WHERE p2.department = p1.department
);

