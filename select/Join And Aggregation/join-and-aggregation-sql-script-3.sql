-- Example 1
SELECT COUNT(user_id) 
FROM photos;

-- Important! Null Ids isn't counted by Count() aggregation function

-- Result : 20


-- Example 2
SELECT COUNT(*) 
FROM photos;

-- Count(*) that means is counted up total numbers
-- Result : 21


-- Example 3
SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id;


-- Example 4
SELECT photo_id, COUNT(*)
FROM comments
GROUP BY photo_id;


-- Example 5 (IT IS CARMA QUERY THAT CONTAINS JOIN & AGGREGATION)
SELECT authors.id AS author_id, COUNT(*)
FROM books
JOIN authors ON author.id = books.author_id
GROUP BY authors.ids


-- Example 6
SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;


-- Example 7
SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id < 50
GROUP BY user_id
HAVING COUNT(*) > 20;


-- Example 8
SELECT manufacturer, SUM(price * units_sold) 
FROM phones
GROUP BY manufacturer
HAVING SUM(price * units_sold) > 2000000;


-- Example 6
SELECT name, COUNT(*)
FROM books
JOIN authors ON authors.id = books.author_id
GROUP BY authors.name