-- Example 1
CREATE INDEX ON users (username);

-- Example 2
CREATE INDEX users_username ON users (username);

-- Example 3
DROP INDEX users_username_idx;

-- Example 4
EXPLAIN ANALYZE SELECT * 
FROM users
WHERE username = 'Emil30';


