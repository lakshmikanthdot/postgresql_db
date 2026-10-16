
CREATE EXTENSION IF NOT EXISTS pgcrypto;


DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS users;

-- create tables
CREATE TABLE users(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL
);

CREATE TABLE posts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    -- one post belongs to the one user
    -- we need to link the user_id to the users table
    -- we need to use the REFERENCES keyword to create a relationship
    user_id UUID NOT NULL REFERENCES users(id),

    title TEXT NOT NULL,

    status TEXT NOT NULL DEFAULT 'draft' CHECK ( status IN ('draft', 'published')),

    views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);

CREATE TABLE comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    -- Every comments should be associated with the some post
    post_id UUID NOT NULL REFERENCES posts(id),

    body TEXT NOT NULL
);


CREATE TABLE tags (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(), 
    -- Every tag should have a unique name like #lucky_fm
    name TEXT NOT NULL UNIQUE    
);

CREATE TABLE post_tags (
    -- one post have mutliple tags
    -- one tag has multiple posts
    -- many to many relationship between posts and tags
    post_id UUID NOT NULL REFERENCES posts(id),
    tag_id UUID NOT NULL REFERENCES tags(id),
    
    -- we need to create a composite primary key for the post_tags table
    -- composite primary key here
    -- this pair what ever we are taking must be unique
    -- one particular post the same post can't be connect to the same tag twice
    PRIMARY KEY (post_id, tag_id)
);


INSERT INTO users (name) 
VALUES
  ('Ananya'),
  ('Rahul');


INSERT INTO posts (user_id, title, status, views)
SELECT id, 'PostgreSQL Joins Explained', 'published', 100
FROM users
WHERE name = 'Ananya';

-- this is another way to insert the data into the posts table using subquery
-- INSERT INTO posts (user_id, title, status, views)
-- VALUES (
--     (SELECT id FROM users WHERE name = 'Ananya'),
--     'PostgreSQL Joins Explained',
--     'published',
--     100
-- );

INSERT INTO posts (user_id, title, status, views)
SELECT id, 'Indexes for Beginners', 'draft', 40
FROM users
WHERE name = 'Ananya';

INSERT INTO posts (user_id, title, status, views)
SELECT id, 'Backend APIs with PostgreSQL', 'published', 180
FROM users
WHERE name = 'Rahul';


INSERT INTO comments (post_id, body)
SELECT id, 'Very clear explanation.'
FROM posts
WHERE title = 'PostgreSQL Joins Explained';

INSERT INTO comments (post_id, body)
SELECT id, 'Please add more examples.'
FROM posts
WHERE title = 'Backend APIs with PostgreSQL';

INSERT INTO tags (name) 
VALUES
  ('sql'),
  ('backend');

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'PostgreSQL Joins Explained'
  AND t.name = 'sql';

-- INSERT INTO post_tags (post_id, tag_id)
-- SELECT posts.id, tags.id         -- ✅ Valid without aliases
-- FROM posts, tags 
-- WHERE posts.title = 'PostgreSQL Joins Explained'
--   AND tags.name = 'sql';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Indexes for Beginners'
  AND t.name = 'sql';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Backend APIs with PostgreSQL'
  AND t.name = 'backend';

SELECT 'Part 3 reduced database reset and sample data inserted successfully.' AS message;

-- relationships sessions
-- commands
-- psql -U postgres -d postgresql_part1 -f part3/01_reset_and_seed_relationships.sql
-- psql -U postgres -d postgresql_part1 -f part2/15_returning_after_insert.sql
-- export PGPASSWORD=admin