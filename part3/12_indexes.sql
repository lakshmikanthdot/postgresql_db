


-- indexes

-- index helps postgres to find rows faster
-- book index will help to find books faster by title, author, and price

-- without checking every row in the table, postgres can use index to find rows faster


-- SELECT -> speed it up this particular process


SELECT
  id, title, status views, user_id
FROM posts;

-- filter the post by status
-- /posts?status=published
-- if 5L posts then it will take time to find the published posts
SELECT
  id, title, status views, user_id
FROM posts
WHERE status = 'published';


-- create index on status column to speed up the query
-- idx_posts_status
-- idx - index
-- posts - table name
-- status - column name

CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);


SELECT title, status, views 
FROM posts
WHERE status = 'published'
ORDER BY views DESC;

-- we are doing composite index on status and views column to speed up the query
-- composite index - index on multiple columns

-- idx_posts_status_views
-- idx -- index
-- posts -- table name
-- status -- 1st column name
-- views -- 2nd column name

CREATE INDEX IF NOT EXISTS idx_posts_status_views
ON posts(status, views DESC);


-- foreign key index
-- every post is created by valid user
-- /users/:id/posts
-- getting the all the posts created by the particular user

SELECT title, status, views
FROM posts
WHERE user_id = (
    SELECT id FROM USERS WHERE name = 'rahul'
);

-- idx_posts_user_id
-- idx -- index
-- posts -- table name
-- user_id -- column name

CREATE INDEX IF NOT EXISTS idx_posts_user_id
ON posts(user_id);

-- commands

-- psql -U postgres -d postgresql_part1 -f part3/12_indexes.sql