


-- count unique values in a column
-- when joins created repated rows, use distinct to count unique values
-- one post have multiple tags eg. angular tag

-- when we join this posts table with tags and post_tags table we have
-- the same post will appear multiple times
-- eg a post with the tag "angular" will appear once for each tag it has


-- count how many unique posts are connected to each tag

SELECT
  t.name AS tag_name,
  COUNT(DISTINCT p.id) AS total_unique_posts
FROM tags AS t
LEFT JOIN post_tags AS pt
  ON t.id = pt.tag_id
LEFT JOIN posts AS p
  ON pt.post_id = p.id
GROUP BY t.id, t.name
ORDER BY total_unique_posts DESC;

-- commands

-- psql -U postgres -d postgresql_part1 -f part3/10_count_distinct.sql