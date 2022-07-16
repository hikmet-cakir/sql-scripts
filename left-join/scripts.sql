====================================================

Example 1

====================================================
SELECT * FROM photes
LEFT JOIN users ON users.id = photes.user_id;
====================================================

Example 2

====================================================
SELECT url, username FROM photes
LEFT JOIN users ON users.id = photes.user_id;
====================================================

Example 3

====================================================
SELECT contents, username 
FROM comments
LEFT JOIN users ON users.id = comments.user_id;
====================================================

Example 4

====================================================
SELECT contents, url 
FROM comments 
LEFT JOIN photos ON photos.id = comments.photo_id;
====================================================

Example 5

====================================================
SELECT id
FROM photos
LEFT JOIN comments ON photos.id = comments.photo_id;
====================================================

Example 6

====================================================
SELECT photos.id
FROM photos
LEFT JOIN comments ON photos.id = comments.photo_id;
====================================================
 
Example 7

====================================================
SELECT comments.id AS comment_id, photos.id
FROM photos
LEFT JOIN comments ON photos.id = comments.photo_id;
====================================================

Example 8

====================================================
SELECT comments.id AS comment_id, p.id
FROM photos AS p
LEFT JOIN comments ON p.id = comments.photo_id;
====================================================

Example 9

====================================================
SELECT comments.id AS comment_id, p.id
FROM photos p
LEFT JOIN comments ON p.id = comments.photo_id;
====================================================

Example 10

====================================================
SELECT url, username
FROM photos
LEFT JOIN users ON users.id = photos.user_id;
====================================================

Example 11

====================================================
SELECT url, contents
FROM comments
LEFT JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;
====================================================

Example 12

====================================================
SELECT url, contents 
FROM comments
LEFT JOIN photos ON photos.id = comments.photo_id
LEFT JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;
====================================================

Example 13

====================================================
SELECT title, name, rating
FROM reviews
LEFT JOIN books ON books.id = reviews.book_id
LEFT JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;
====================================================

Example 14

====================================================
SELECT name, COUNT(*)
FROM books
LEFT JOIN authors ON authors.id = books.author_id
GROUP BY authors.name
====================================================

Example 15

====================================================
SELECT url, contents
FROM comments
LEFT JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;
==================================================== 

Example 16

====================================================
SELECT url, contents 
FROM comments
LEFT JOIN photos ON photos.id = comments.photo_id
LEFT JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;
====================================================

Example 17

====================================================
SELECT title, name, rating
FROM reviews
LEFT JOIN books ON books.id = reviews.book_id
LEFT JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;
====================================================