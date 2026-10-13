
DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events (
    -- UUID is a data type that stores Universally Unique Identifiers (UUIDs)
    -- gen_random_uuid() is a built-in PostgreSQL function
    -- automatically generates a random UUID value for the id column 
    -- when a new row is inserted into the table
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    -- event_name text
    event_name TEXT NOT NULL,

    -- JSONB
    -- store your json data and store in binary format
    -- felixible and efficient way to store and query JSON data in PostgreSQL
    -- empty object :: repsresent type od that object
    metadata JSONB DEFAULT '{}'::jsonb,

    created_at TIMESTAMP DEFAULT NOW()

);

INSERT INTO basics.app_events (event_name , metadata)
VALUES
('sign_up', '{"browser" : "chrome"}'),
('sign_in', '{"user" : "lucky"}');


SELECT * FROM basics.app_events;

-- query json property also
-- get the value of the broswer property from the metadata column
-- data_type
SELECT 
    event_name,
    metadata ->> 'browser' AS browser
FROM basics.app_events
WHERE metadata ? 'browser';




-- commands

-- ## 5th part
-- psql -U postgres -d postgresql_part1 -f part1/05_other_data_types.sql
-- psql -U postgres -d postgresql_part1
-- \dt basics.*

-- query the json object property
-- we are telling we have to open json in the column metadata
-- we have to get the broswer value as text
-- SELECT 
--     column_name1,
--     column_name2 ->> 'property_name' AS alias_name
-- FROM schemaname.tablename
-- WHERE column_name ? 'property_name';



-- ## 4th part

-- psql -U postgres -d postgresql_part1 -f part1/04_data_types.sql
-- export PGPASSWORD=admin

-- DATA TYPES
-- TEXT, VARCHAR, CHAR, INTEGER, BIGINT, NUMERIC, BOOLEAN

-- to search and find the values inside the table, we can use the SELECT statement
-- SELECT column1, column2, column3
-- FROM schemaname.tabelname

-- filter using the WHERE clause
-- SELECT column1, column2, column3
-- FROM schemaname.tabelname
-- WHERE condition;

-- ## 3rd part

-- to check the how many tables we have in the current database
-- \dt
-- psql -U postgres -d postgresql_part1 -f part1/03_first_table.sql
-- psql -U postgres -d postgresql_part1
-- export PGPASSWORD=admin
-- \dt basics.*

--- to create the table
-- CREATE TABEL schemaname.tabelname( column1 datatype, column2 datatype, column3 datatype );

-- to insert the data into the table
-- INSERT INTO schemaname.tabelname (column1, column2, column3)
-- VALUES (value1, value2, value3);

-- to check the data inside the table
-- SELECT * FROM schemaname.tabelname;

-- if your are inside the psql shell
-- we want to run the sql file, we can use the command \i
-- \i part1/03_first_table.sql

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