-- Example 1
SELECT * FROM cities;

-- Example 2
SELECT name, country FROM cities;

-- Example 3
SELECT name, population, name FROM cities;


-- Example 4
SELECT * FROM photes
JOIN users ON users.id = photes.user_id;

-- Example 5
SELECT url, username FROM photes
JOIN users ON users.id = photes.user_id;