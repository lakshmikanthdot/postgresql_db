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
-- ## 1st part
-- psql -U postgres -d postgres -f part/01/01_first_database.sql
-- -U means user name
-- -d means database name
-- -f means file names

-- to inside the psql shell
-- psql -U postgres -d postgres

-- to skip the password prompt, you can use the command below
-- export PGPASSWORD=admin

--  to check current database we are using
-- SELECT current_database();

-- to check who is the current user
-- SELECT current_user;

-- to check the postgresql version
-- SELECT version();

-- to check the how many databases are there in the server
-- \l

-- to check the how many tables we have in the current database
-- \dt

-- to exit the psql shell
-- \q

-- to create the a new database
-- CREATE DATABASE database_name;

-- to drop the a database
-- DROP DATABASE database_name;

-- to safety check if the database exists before dropping it
-- we need to use the IF EXISTS
-- DROP DATABASE IF EXISTS database_name;

-- ## 2nd part
-- psql -U postgres -d postgresql_part1 -f part1/02_first_schema.sql

-- to create the schema inside the database
-- CREATE SCHEMA schema_name;

-- to safety check if the schema exists before creating it
-- we need to use the IF NOT EXISTS
-- CREATE SCHEMA IF NOT EXISTS schema_name;

-- to create extension inside the database
-- CREATE EXTENSION extension_name;

-- to safety check if the extension exists before creating it
-- we need to use the IF NOT EXISTS
-- CREATE EXTENSION IF NOT EXISTS extension_name;

-- to check the all the schemas available in the current database
-- information_schema.schemata is a system catalog table 
-- which contains the information about all the schemas available in the current database
-- SELECT schema_name
-- FROM information_schema.schemata
-- ORDER BY schema_name;