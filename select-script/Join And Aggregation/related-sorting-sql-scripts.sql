-- Example 1
SELECT paid, COUNT(*)
FROM orders
GROUP BY paid;

-- Example 2
SELECT first_name, last_name, paid
FROM users
JOIN orders ON users.id = orders.user_id;


-- Example 3
SELECT * 
FROM products
ORDER BY price; 

-- Default ASC


-- Example 4
SELECT * 
FROM products
ORDER BY price DESC; 

-- Example 5
SELECT * 
FROM products
ORDER BY price ASC; 


-- Example 6
SELECT * 
FROM products
ORDER BY name;

-- Alphabeticall order; first A then B then C etc...

-- Example 7
SELECT * 
FROM products
ORDER BY name DESC;

-- Example 8
SELECT * 
FROM products
ORDER BY price, weight;

-- Example 9
SELECT * 
FROM products
ORDER BY price, weight DESC;

-- ASC price, DESC weight