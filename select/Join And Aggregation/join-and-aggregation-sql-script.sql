
-- Example 1 
SELECT contents, username 
FROM comments
JOIN users ON users.id = comments.user_id;


-- Example 2
SELECT contents, url 
FROM comments 
JOIN photos ON photos.id = comments.photo_id;