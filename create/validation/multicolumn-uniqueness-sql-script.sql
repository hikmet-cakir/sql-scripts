-- Example 1
ALTER TABLE products
DROP CONSTRAINT products_name_key;


-- Example 2
-- When Creating The Table
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	department VARCHAR(50),
	price INTEGER,
	weight INTEGER,
	UNIQUE(name, department)
);


-- Example 3
-- After the table was created
ALTER TABLE products
ADD UNIQUE (name, department);