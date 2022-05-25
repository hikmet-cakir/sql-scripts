-- Example 1
SELECT
  name,
  area
FROM
  cities
WHERE
  area = 8223;

-- Example 2
SELECT
  name,
  area
FROM
  cities
WHERE
  area != 8223;

-- Example 3
SELECT
  name,
  area
FROM
  cities
WHERE
  area <> 8223;


-- Example 4
SELECT
  name,
  area
FROM
  cities
WHERE
  area BETWEEN 2000 AND 4000;

-- 2000 -> Lower bound
-- 4000 -> Upper bound

-- Example 5
SELECT
  name,
  area
FROM
  cities
WHERE
  name IN ('Delhi', 'Shanghai');

-- Example 6
SELECT
  name,
  area
FROM
  cities
WHERE
  name NOT IN ('Delhi', 'Shanghai');

-- Example 7
SELECT
  name,
  area
FROM
  cities
WHERE
  area NOT IN (3043, 8223) AND name = 'Delhi';

-- Example 8
SELECT
  name,
  area
FROM
  cities
WHERE
  area NOT IN (3043, 8223) OR name = 'Delhi';


-- Example 9
SELECT
	name,
	population / area AS population_density
FROM
	cities
WHERE
	population / area > 6000;