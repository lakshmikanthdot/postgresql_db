


-- it always calculate one result from many rows
-- COUNT() -> number of rows
-- SUM() -> total value
-- AVG() -> average value
-- MIN() -> smallest value
-- MAX() -> largest/max value

-- use cases
-- admin dashboard, reports, analytics, admin panels


-- count all rows from the posts table
SELECT
  COUNT(*) AS total_posts,
  -- to apply filter we need to use FILTER clause
  COUNT(*) FILTER (WHERE status = 'published') AS total_published_posts,
  COUNT(*) FILTER (WHERE status = 'draft') AS total_draft_posts,
  -- sum for the views column
  SUM(views) AS total_views,
  -- average views for all posts
  AVG(views) AS average_views,
  -- minimum views for all posts
  MIN(views) AS lowest_views,
  -- maximum views for all posts
  MAX(views) AS highest_views

FROM posts;





-- commands
-- psql -U postgres -d postgresql_part1 -f part3/08_aggregate_functions.sql