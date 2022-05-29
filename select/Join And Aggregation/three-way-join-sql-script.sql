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