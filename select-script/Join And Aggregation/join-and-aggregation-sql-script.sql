
-- Example 1 
SELECT contents, username 
FROM comments
JOIN users ON users.id = comments.user_id;


-- Example 2
SELECT contents, url 
FROM comments 
JOIN photos ON photos.id = comments.photo_id;


-- Example 3
SELECT id
FROM photos
JOIN comments ON photos.id = comments.photo_id;

-- ERROR!! column reference "id" is ambiguous


-- Example 4
SELECT photos.id
FROM photos
JOIN comments ON photos.id = comments.photo_id;

-- SUCCESS 


-- Example 5
SELECT comments.id AS comment_id, photos.id
FROM photos
JOIN comments ON photos.id = comments.photo_id;

-- SUCCESS 


-- Example 6
SELECT comments.id AS comment_id, p.id
FROM photos AS p
JOIN comments ON p.id = comments.photo_id;

-- SUCCESS 

-- Example 7
SELECT comments.id AS comment_id, p.id
FROM photos p
JOIN comments ON p.id = comments.photo_id;

-- SUCCESS 


-- Example 8
SELECT url, username
FROM photos
JOIN users ON users.id = photos.user_id;


-- Example 9
INSERT INTO photos (url, user_id)
VALUES ('https://banner.jpgh', NULL);
 
SELECT url, username
FROM photos
JOIN users ON users.id = photos.user_id;