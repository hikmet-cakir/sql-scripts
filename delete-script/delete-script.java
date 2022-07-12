-- Example 1
DELETE FROM cities WHERE name = 'Tokyo';


-- Example 2
DELETE FROM cities WHERE name <> 'Tokyo';


-- Example 3
DROP TABLE photos; -- SUCCESS (if we do select query to photos, we take response that is relation "photos" does not exist)


-- Example 4
DELETE FROM users WHERE id = 1; -- SUCCESS and will delete with users table's records