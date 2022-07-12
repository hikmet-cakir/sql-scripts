====================================================

Example 1

====================================================
CREATE TABLE country (
  name VARCHAR(50),
  population INTEGER,
  capital VARCHAR(50),
  currency VARCHAR(50),
  gross_domestic_product DECIMAL
);
====================================================

Example 2

====================================================
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR
);
====================================================

Example 3

====================================================
CREATE TABLE videos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id)
);
====================================================

Example 4

====================================================
CREATE TABLE videos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);
====================================================

Example 5

====================================================
CREATE TABLE videos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);
====================================================

Example 6

====================================================
CREATE TABLE videos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);
====================================================

Example 7

====================================================
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username VARCHAR(50)
);
====================================================

Example 8

====================================================
CREATE TABLE videos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);
====================================================
 
Example 9

====================================================
CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  description VARCHAR(240),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  video_id INTEGER REFERENCES photos(id) ON DELETE CASCADE
);
====================================================