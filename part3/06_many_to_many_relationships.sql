-- one post can have multiple tags
-- one tag can be associated with many posts


-- here we have posts table, tags table and post_tags table
-- we have post id and tag id in the post_tags table
-- posts.id === post_tags.post_id
-- tags.id === post_tags.tag_id


-- show me every post with its tags

SELECT
  posts.title AS post_title,
  tags.name AS tag_name
FROM posts
INNER JOIN post_tags
  ON posts.id = post_tags.post_id
INNER JOIN tags
  ON tags.id = post_tags.tag_id
ORDER BY posts.title, tags.name;


-- ## same output as below query
-- SELECT
--   posts.title AS post_title,
--   tags.name AS tag_name
-- FROM post_tags
-- INNER JOIN posts
--   ON posts.id = post_tags.post_id
-- INNER JOIN tags
--   ON tags.id = post_tags.tag_id
-- ORDER BY posts.title, tags.name;


-- commands
-- psql -U postgres -d postgresql_part1 -f part3/06_many_to_many_relationships.sql