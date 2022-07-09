-- Example 1
-- When Creating The Table
-- Applying a Unique Constraint to One Column
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
	department VARCHAR(50),
	price INTEGER,
	weight INTEGER
);


-- Example 2
-- After The Table Was Created
ALTER TABLE products
ADD UNIQUE (name);