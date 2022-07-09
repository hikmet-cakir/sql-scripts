-- Example 1
-- When Creating The Table
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	department VARCHAR(50) NOT NULL,
	price INTEGER DEFAULT 999,
	weight INTEGER
);


-- Example 2
-- After The Table Was Created
ALTER TABLE products
ALTER COLUMN price
SET DEFAULT 999;