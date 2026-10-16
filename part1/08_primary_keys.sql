-- if we dont have primary key, what all difficulties we will face in the database
-- harder to update , delete, do any kind of reference or 
-- even we want to connect with specific two row in other tables
-- we can use the primary key to uniquely identify each individual record in a database table


DROP TABLE IF EXISTS basics.sales;
CREATE TABLE basics.sales (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.sales (title, price)
VALUES 
    ('sale 1', 200),
    ('sale 2', 500);

-- SELECT * FROM basics.sales;
-- SELECT * FROM basics.sales WHERE id = 2;

INSERT INTO basics.sales (id, title, price)
VALUES 
    (1,'duplicate id', 200);


-- psql:part1/08_primary_keys.sql:179: ERROR:  
-- duplicate key value violates unique constraint "sales_pkey"
-- DETAIL:  Key (id)=(1) already exists.

-- commands

-- ## 8th part
-- psql -U postgres -d postgresql_part1 -f part1/08_primary_keys.sql


-- ## 7th part
-- psql -U postgres -d postgresql_part1 -f part1/07_constraints.sql
-- psql -U postgres -d postgresql_part1

-- if we comment the DROP TABLE
-- if we run the script again, it will fail because the table already exists
-- psql:part1/07_constraints.sql:24: ERROR:  relation "accounts" already exists
-- psql:part1/07_constraints.sql:27: ERROR:  
-- duplicate key value violates unique constraint "accounts_email_key"
-- DETAIL:  Key (email)=(lucky@example.com) already exists.

-- if we give age 11, we will get the error
-- psql:part1/07_constraints.sql:27: ERROR:  
-- new row for relation "accounts" violates check constraint "accounts_age_check"
-- DETAIL:  Failing row contains (1, lucky, lucky@example.com, t, 11, 2026-10-14 02:22:02.427103).

-- ## 6th part
-- psql -U postgres -d postgresql_part1 -f part1/06_null_empty_string.sql
-- psql -U postgres -d postgresql_part1
-- NULL
-- SELECT * FROM schemaname.tablename WHERE column_name IS NULL;
-- SELECT * FROM schemaname.tablename WHERE column_name IS NOT NULL;
-- EMPTY STRING
-- SELECT * FROM schemaname.tablename WHERE column_name = '';


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