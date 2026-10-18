-- left join keeps all rows from the left table
-- if right side table has the matching data
-- it will return the data from the right table
-- if right side table does not have the matching data
-- it will return null for the right side table columns

-- in simple
-- if the right table has matching data, postgreSQL includes that
-- if its don't have any matching data it returns null

-- posts -> left table -- it will keep all the posts
-- comments -> right table 
-- it will return the comments if it has matching data, 
-- if not it will return null for the comments table columns

-- because not every posts is going to have comments
-- some posts will have 100 comments and some will have 0 comments

-- 
-- left join keep all our posts, if no commenys it will return null for comments table
-- inner join hide the posts that don't have any comments

SELECT
  posts.title AS post_title,
  comments.body AS comment_body
FROM posts
LEFT JOIN comments
  ON posts.id = comments.post_id
ORDER BY posts.title;


-- commands
-- psql -U postgres -d postgresql_part1 -f part3/05_left_join.sql