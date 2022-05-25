-- Example 1
SELECT name ||', '|| country FROM cities;

-- Example 2
SELECT CONCAT(name, ', ' ,country) AS location FROM cities;

-- Example 3
SELECT CONCAT(UPPER(name), ', ' , UPPER(country)) AS location FROM cities;

-- Example 4
SELECT UPPER(CONCAT(name, ', ' ,country)) AS location FROM cities;