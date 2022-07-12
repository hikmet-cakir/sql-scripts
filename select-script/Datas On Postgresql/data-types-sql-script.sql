-- Example 1
SELECT 2 + 2;

-- 4

-- Example 2
SELECT (2);
9
-- Example 3
SELECT (2.0);

-- 2.0

-- Example 4
SELECT (2.0::INTEGER);

-- 2

-- Example 5
SELECT (2.0::SMALLINT);

-- 2


-- Example 6
SELECT (9999::SMALLINT);

--Error smallint out of range

-- Example 7
SELECT (1.99999::REAL - 1.99998::REAL);


-- Example 8
SELECT ('alskdjfalskjdf'::CHAR(3));
-- als

-- Example 9
SELECT ('a'::CHAR(3));
-- (a  ) There is extra space


-- Example 10
SELECT ('a'::VARCHAR(5));
-- (a) There is no extra space


-- Example 11
SELECT ('true'::BOOLEAN);
-- true

-- Example 12
SELECT (1::BOOLEAN);
-- true


-- Example 13
SELECT ('no'::BOOLEAN);
-- false

-- Example 14
SELECT ('f'::BOOLEAN);
-- false

-- Example 15
SELECT (NULL::BOOLEAN);
-- null


-- Example 16
SELECT ('NOV-20-1980'::DATE);
-- 1980-11-20

-- Example 17
SELECT ('NOV 20, 1980'::DATE);
-- 1980-11-20


-- Example 18
SELECT ('1980 November 20'::DATE);
-- 1980-11-20

-- Example 19
SELECT ('01:23'::TIME);
-- 01:23:00

-- Example 20
SELECT ('01:23 PM'::TIME);
-- 13:23:00

-- Example 21
SELECT ('01:23 PM'::TIME WITHOUT TIME ZONE);
-- 13:23:00


-- Example 22
SELECT ('01:23:23 PM'::TIME WITHOUT TIME ZONE);
-- 13:23:23



-- Example 22
SELECT ('01:23:23 AM EST'::TIME WITH TIME ZONE);
-- 01:23:23-05:00


-- Example 23
SELECT ('01:23:23 AM PST'::TIME WITH TIME ZONE);
-- 01:23:23-08:00


-- Example 24
SELECT ('01:23:23 AM z'::TIME WITH TIME ZONE);
-- 01:23:23+00:00


-- Example 25
SELECT ('01:23:23 AM utc'::TIME WITH TIME ZONE);
-- 01:23:23+00:00


-- Example 26
SELECT ('NOV-20-1980 1:23 AM PST'::TIMESTAMP WITH TIME ZONE);
-- 1980-11-20 02:23:00-07

-- Example 27
SELECT ('1 day'::INTERVAL);
-- 1 day


-- Example 28
SELECT ('1 D 20 H 30 M 45 S'::INTERVAL);
-- 1 day 20:30:45


-- Example 29
SELECT ('1 D 20 H 30 M 45 S'::INTERVAL) - ('1 D'::INTERVAL);
-- 20:30:45


-- Example 30
SELECT 
	('NOV-20-1980 1:23 AM EST'::TIMESTAMP WITH TIME ZONE)
	-
	('4 D'::INTERVAL);

-- 1980-11-18 23:23:00-07

-- Example 30
SELECT 
	('NOV-20-1980 1:23 AM EST'::TIMESTAMP WITH TIME ZONE)
	-
	('NOV-10-1980 1:23 AM EST'::TIMESTAMP WITH TIME ZONE)

-- 10 days






