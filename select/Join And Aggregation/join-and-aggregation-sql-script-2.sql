-- Example 1
SELECT url, contents
FROM comments
JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;

-- Example 2
SELECT url, contents 
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;



-- Example 3
SELECT title, name, rating
FROM reviews
JOIN books ON books.id = reviews.book_id
JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;

-- Example 4
SELECT user_id
FROM comments
GROUP BY user_id

 -- Example 5
SELECT contents
FROM comments
GROUP BY user_id;

-- ERROR! (column "comments.contents" must appear in the GROUP BY clause or be used in an aggregate function)



-- Example 6
SELECT MAX(id)
FROM comments;


-- Example 7
SELECT MIN(id)
FROM comments;

-- Example 8
SELECT AVG(id)
FROM comments;

-- Example 9 
SELECT COUNT(id) 
FROM comments;

-- Example 10
SELECT SUM(id) 
FROM comments;

-- Example 11
SELECT SUM(id), id 
FROM comments;

-- ERROR column "comments.id" must appear in the GROUP BY clause or be used in an aggregate function


-- Example 12
SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id


-- Example 13
SELECT  MAX(id)
FROM comments
GROUP BY user_id


-- Example 14
SELECT user_id, COUNT(id) AS nums_comments_created
FROM comments
GROUP BY user_id



