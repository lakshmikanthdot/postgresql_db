-- one parent rows can have many child rows
-- in our example,

-- uers2 - rahul - can write many posts
-- but post1, post2 what ever he written it is belong to only one user rahul

-- one user can write many posts, 
-- but one post belongs to only one user

-- users - parent table
-- posts - child table

-- posts.users_id -> users.id
-- users.id is the original user id
-- posts.user_id stores that original user id in the posts table

-- give me the all post with there author name
-- in the post table i have only the user_id 
-- how can i get the user name from the users table


-- show all posts with their authors

SELECT 
  users.name AS author_name,
  posts.title AS post_title,
  posts.status
FROM users
INNER JOIN posts
  ON posts.user_id = users.id
ORDER BY users.name, posts.title;

-- INNER JOIN with child table
-- where the relationship exits on the both sides
-- ON child table foreign key = parent table primary key
-- then return the columns from both tables


-- commands
--  psql -U postgres -d postgresql_part1 -f part3/03_one_to_many_relationship.sql