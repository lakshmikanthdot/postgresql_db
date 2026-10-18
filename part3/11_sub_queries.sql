

-- one query inside another query is called subquery


-- postgresql run the inner query first
-- and then run the outer query using the result of the inner query


-- 2 query
-- inner query calculate some avg value
-- that avg value -> outer query need to use

-- which posts are performing better than average
-- more than average number of comments

SELECT
  title, status, views
FROM posts
WHERE views > (
    SELECT AVG(views) FROM posts
)
ORDER BY views DESC;


-- commands

-- psql -U postgres -d postgresql_part1 -f part3/11_sub_queries.sql