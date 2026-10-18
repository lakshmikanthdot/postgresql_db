

-- group by creates groups of rows
-- WHERE -> filters normal rows before grouping
-- HAVING -> filters groups after grouping
-- we are using the having when condition depends on an aggregate function 

-- find the authors who have written atleast 2 posts

SELECT
  u.name AS author_name,
  COUNT(p.id) AS total_posts,
  SUM(p.views) AS total_views
FROM users AS u
LEFT JOIN posts as p
  ON u.id = p.user_id
-- GROUP BY takes all rows that have the exact same u.id and u.name
-- and squashes them into a single bucket (group)
GROUP BY u.id, u.name
HAVING COUNT(p.id) >= 2
ORDER BY total_posts DESC;

-- commands
-- psql -U postgres -d postgresql_part1 -f part3/09_group_by.sql