-- aliases is going to make your join queries shorter and easier to read

-- if we want title from the post table -> posts.title
-- instead of the above, i want to write like thie p.title
-- we are telling that this p means post table
-- users.name instead u want to do u.name




-- use aliases for the table names

SELECT 
  p.title AS post_title,
  p.status,
  p.views,
  u.name AS author_name,
  c.body AS comment_body
FROM posts AS p
INNER JOIN users AS u
  ON p.user_id = u.id
LEFT JOIN comments AS c
  ON p.id = c.post_id
ORDER BY p.views DESC;


-- comments
-- psql -U postgres -d postgresql_part1 -f part3/07_table_aliases.sql