====================================================

Example 1

====================================================
SELECT * FROM photes
RIGHT JOIN users ON users.id = photes.user_id;
====================================================

Example 2

====================================================
SELECT url, username FROM photes
RIGHT JOIN users ON users.id = photes.user_id;
====================================================

Example 3

====================================================
SELECT contents, username 
FROM comments
RIGHT JOIN users ON users.id = comments.user_id;
====================================================

Example 4

====================================================
SELECT contents, url 
FROM comments 
RIGHT JOIN photos ON photos.id = comments.photo_id;
====================================================

Example 5

====================================================
SELECT id
FROM photos
RIGHT JOIN comments ON photos.id = comments.photo_id;
====================================================

Example 6

====================================================
SELECT photos.id
FROM photos
RIGHT JOIN comments ON photos.id = comments.photo_id;
====================================================
 
Example 7

====================================================
SELECT comments.id AS comment_id, photos.id
FROM photos
RIGHT JOIN comments ON photos.id = comments.photo_id;
====================================================

Example 8

====================================================
SELECT comments.id AS comment_id, p.id
FROM photos AS p
RIGHT JOIN comments ON p.id = comments.photo_id;
====================================================

Example 9

====================================================
SELECT comments.id AS comment_id, p.id
FROM photos p
RIGHT JOIN comments ON p.id = comments.photo_id;
====================================================

Example 10

====================================================
SELECT url, username
FROM photos
RIGHT JOIN users ON users.id = photos.user_id;
====================================================

Example 11

====================================================
SELECT url, contents
FROM comments
RIGHT JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;
====================================================

Example 12

====================================================
SELECT url, contents 
FROM comments
RIGHT JOIN photos ON photos.id = comments.photo_id
RIGHT JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;
====================================================

Example 13

====================================================
SELECT title, name, rating
FROM reviews
RIGHT JOIN books ON books.id = reviews.book_id
RIGHT JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;
====================================================

Example 14

====================================================
SELECT name, COUNT(*)
FROM books
RIGHT JOIN authors ON authors.id = books.author_id
GROUP BY authors.name
====================================================

Example 15

====================================================
SELECT url, contents
FROM comments
RIGHT JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;
==================================================== 

Example 16

====================================================
SELECT url, contents 
FROM comments
RIGHT JOIN photos ON photos.id = comments.photo_id
RIGHT JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;
====================================================

Example 17

====================================================
SELECT title, name, rating
FROM reviews
RIGHT JOIN books ON books.id = reviews.book_id
RIGHT JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;
====================================================