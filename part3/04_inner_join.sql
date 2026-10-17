

-- inner join returns only the matching rows from both tables


SELECT 
  users.name AS author_name,
  posts.title AS post_title,
  posts.status,
  posts.views
FROM posts
INNER JOIN users 
-- matching rule
   ON users.id = posts.user_id
WHERE posts.status = 'published'
ORDER BY posts.views DESC;


-- commands
-- psql -U postgres -d postgresql_part1 -f part3/04_inner_join.sql