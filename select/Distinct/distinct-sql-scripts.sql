-- Example 1
SELECT DISTINCT department
FROM products;


-- Example 2
SELECT COUNT(DISTINCT department)
FROM products;

-- Example 3
SELECT DISTINCT department, name
FROM products;

-- Example 4
SELECT COUNT( DISTINCT department, name)
FROM products;

-- ERROR 
-- DESC: function count(character varying, character varying) does not exist


