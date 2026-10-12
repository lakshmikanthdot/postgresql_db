-- db -> schema -> table -> rows

-- safety check if basics schema exists, if not create it
CREATE SCHEMA IF NOT EXISTS basics;


-- extension 
-- later part we will use getrandomuuid()
-- which will helpus to create random uuid for our primary key
-- in postgresql we can directly generate random uuid using pgcrypto extension
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- write a query
-- which will give the all the schemas available in the current database
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;

-- commands
-- psql -U postgres -d postgresql_part1 -f part1/02_first_schema.sql