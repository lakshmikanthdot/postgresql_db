



-- multiple sql statements run as one safe unit

-- in ecommerce website
-- placing an order
-- reduce stock of that product
-- creating payment records
-- transfering money from user account to seller account
-- creating user records with related profile data

-- mutliple data bases changes must succeed together or fail together


-- start a transaction
-- not save the changes to the database until we commit the transaction
BEGIN;

-- update the status to published
UPDATE posts
SET status = 'published'
WHERE title = 'Indexes for Beginners'
  AND status = 'draft';

-- increase the view count of the post
UPDATE posts
SET views = views + 50
WHERE title = 'Indexes for Beginners';


-- check if the post was updated successfully
SELECT title, status, views
FROM posts
WHERE title = 'Indexes for Beginners';


-- COMMIT will save the transaction changes to the database
COMMIT;

-- commands

-- psql -U postgres -d postgresql_part1 -f part3/13_transactions.sql
