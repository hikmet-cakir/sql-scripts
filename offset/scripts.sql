======================================================================================

Example 1

======================================================================================
SELECT *
FROM users
OFFSET 40;
======================================================================================

Example 2

======================================================================================
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 1;
======================================================================================

Example 3

======================================================================================
SELECT *
FROM products
ORDER BY price DESC
LIMIT 20
OFFSET 0;
======================================================================================

Example 4

======================================================================================
SELECT *
FROM products
ORDER BY price DESC
LIMIT 20
OFFSET 40;
======================================================================================

Example 5

======================================================================================
SELECT name
FROM phones
ORDER BY price DESC
LIMIT 2
OFFSET 1;
======================================================================================