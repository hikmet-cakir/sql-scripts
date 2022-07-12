====================================================

Example 1

====================================================
SELECT * FROM photes
JOIN users ON users.id = photes.user_id;
====================================================

Example 2

====================================================
SELECT url, username FROM photes
JOIN users ON users.id = photes.user_id;
====================================================

Example 3

====================================================
SELECT contents, username 
FROM comments
JOIN users ON users.id = comments.user_id;
====================================================

Example 4

====================================================
SELECT contents, url 
FROM comments 
JOIN photos ON photos.id = comments.photo_id;
====================================================

Example 5

====================================================
SELECT id
FROM photos
JOIN comments ON photos.id = comments.photo_id;
====================================================

Example 6

====================================================
SELECT photos.id
FROM photos
JOIN comments ON photos.id = comments.photo_id;
====================================================
 
Example 7

====================================================
SELECT comments.id AS comment_id, photos.id
FROM photos
JOIN comments ON photos.id = comments.photo_id;
====================================================

Example 8

====================================================
SELECT comments.id AS comment_id, p.id
FROM photos AS p
JOIN comments ON p.id = comments.photo_id;
====================================================

Example 9

====================================================
SELECT comments.id AS comment_id, p.id
FROM photos p
JOIN comments ON p.id = comments.photo_id;
====================================================

Example 10

====================================================
SELECT url, username
FROM photos
JOIN users ON users.id = photos.user_id;
====================================================

Example 11

====================================================
SELECT url, contents
FROM comments
JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;
====================================================

Example 12

====================================================
SELECT url, contents 
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;
====================================================

Example 13

====================================================
SELECT title, name, rating
FROM reviews
JOIN books ON books.id = reviews.book_id
JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;
====================================================

Example 14

====================================================
SELECT name, COUNT(*)
FROM books
JOIN authors ON authors.id = books.author_id
GROUP BY authors.name
====================================================

Example 15

====================================================
SELECT url, contents
FROM comments
JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;
==================================================== 

Example 16

====================================================
SELECT url, contents 
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;
====================================================

Example 17

====================================================
SELECT title, name, rating
FROM reviews
JOIN books ON books.id = reviews.book_id
JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;
====================================================