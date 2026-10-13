-- you should never do it in prod application
-- only for learning purpose
-- drop the db if it already exists
DROP DATABASE IF EXISTS postgresql_part1;

-- create new db inside ur postgre server
CREATE DATABASE postgresql_part1;

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