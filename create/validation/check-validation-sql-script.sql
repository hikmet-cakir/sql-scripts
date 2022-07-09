-- Example 1
-- When Creating The Table
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	department VARCHAR(50) NOT NULL,
	price INTEGER CHECK(price > 0)
	weight INTEGER
);


-- Example 2
-- After The Table Was Created
ALTER TABLE products
ADD CHECK(price > 0);

-- Example 3
ALTER TABLE products
ADD CHECK( SELECT MAX(price) FROM Products > 0);

-- Not Allowed, only allows column
