====================================================

Example 1

====================================================
SELECT user_id
FROM comments
GROUP BY user_id
====================================================

Example 2

====================================================
SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id
====================================================

Example 3

====================================================
SELECT  MAX(id)
FROM comments
GROUP BY user_id
====================================================

Example 4

====================================================
SELECT user_id, COUNT(id) AS nums_comments_created
FROM comments
GROUP BY user_id
====================================================

Example 5

====================================================
SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id;
====================================================

Example 6

====================================================
SELECT photo_id, COUNT(*)
FROM comments
GROUP BY photo_id;
====================================================

Example 7

====================================================
SELECT authors.id AS author_id, COUNT(*)
FROM books
JOIN authors ON author.id = books.author_id
GROUP BY authors.ids
====================================================

Example 8

====================================================
SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;
====================================================

Example 9

====================================================
SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id < 50
GROUP BY user_id
HAVING COUNT(*) > 20;
====================================================

Example 10

====================================================
SELECT manufacturer, SUM(price * units_sold) 
FROM phones
GROUP BY manufacturer
HAVING SUM(price * units_sold) > 2000000;
====================================================

Example 11

====================================================
SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;
====================================================

Example 12

====================================================
SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id < 50
GROUP BY user_id
HAVING COUNT(*) > 20;
====================================================

Example 13

====================================================
SELECT manufacturer, SUM(price * units_sold) 
FROM phones
GROUP BY manufacturer
HAVING SUM(price * units_sold) > 2000000;
====================================================

Example 14

====================================================
SELECT name, COUNT(*)
FROM books
JOIN authors ON authors.id = books.author_id
GROUP BY authors.name
====================================================