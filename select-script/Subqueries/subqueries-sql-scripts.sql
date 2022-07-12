-- Example 1
SELECT MAX(price)
FROM products
WHERE department = 'Toys';  ----
			     |
                                                     |
SELECT name, price	     |
FROM products                            |
WHERE price > |XXXXX| <---------


-- Example 2
SELECT name, price
FROM products
WHERE price > (
	SELECT MAX(price) FROM products WHERE department = 'Toys'
);


-- Example 3
SELECT 
	p1.name,
	(SELECT COUNT(name) FROM products)
FROM (SELECT * FROM products) as p1
JOIN    (SELECT * FROM products) as p2 ON p1.id = p2.id
WHERE p1.id IN (SELECT id FROM products);



-- Example 4			    
SELECT name, price, (
	SELECT MAX(price) FROM products;	
)
FROM products
WHERE price > 867;



-- Example 5
SELECT name, price, (
	SELECT price FROM products WHERE id = 3
)
FROM products
WHERE price > 867;


-- SUCCESS


-- Example 5
SELECT name, price, (
	SELECT price FROM products WHERE id = 3
) AS id_3_price
FROM products
WHERE price > 867;


-- SUCCESS


-- Example 6
SELECT name, price, price / (
    SELECT MAX(price) FROM phones
) AS price_ratio
FROM phones