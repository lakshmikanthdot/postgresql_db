-- it is column that points to the primary key of another table

-- in our table
-- users.id is the primary key of the users table
-- posts.user_id is the foreign key of the posts table 
-- that points to the primary key of the users table

-- every post u will create that must belong to an existing user
-- no user no post 

-- in simple
-- foreign key points to the primary key of the another table

SELECT id, name
FROM users;

SELECT id, user_id, title
FROM posts;

-- commands
-- psql -U postgres -d postgresql_part1 -f part3/02_foreign_keys.sql