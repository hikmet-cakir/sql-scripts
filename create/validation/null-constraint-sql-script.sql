-- Example 1
-- When Creating The Table
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	department VARCHAR(50),
	price INTEGER NOT NULL,
	weight INTEGER
);


-- Example 2
-- After The Table Was Created
ALTER TABLE products
ALTER COLUMN price
SET NOT NULL;

