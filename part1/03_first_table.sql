-- dont do this in production, just for testing purposes

DROP TABLE IF EXISTS basics.students;
CREATE TABLE basics.students (

    -- what we are doing here 
    -- this id is unqiue value
    -- this id is creating auto incrementing integer
    -- 1, -> 2, 3, 4 and so on
    -- primary key simply means this column uniquely identifies each row
    -- id is the property name, SERIAL is the data type, PRIMARY KEY is the constraint
    id SERIAL PRIMARY KEY,

    -- name property
    -- text - string data
    -- not null means this col is required
    -- postgres is going to reject if this name value is not present
    name TEXT NOT NULL,


    -- email property
    -- unqique means -- no 2 students can have the same email address
    email TEXT NOT NULL UNIQUE,

    -- age propety
    -- integer - whole number data type
    -- check it is a (rule) constraint - age must be greater than or equal to 18
    age INTEGER CHECK ( age >= 18),

    -- created_at propety
    -- timestamp - date and time data type
    -- default means if you dont give any value it will take by default
    -- NOW() is a postgres function that returns the current date and time
    created_at TIMESTAMP DEFAULT NOW()

);

-- add some data to the table

INSERT INTO basics.students (name, email, age )
VALUES
  ('lucky', 'lucky@gmail.com', 29),
  ('jhon', 'jhon@gmail.com', 28),
  ('chandu', 'chandu@gmail.com', 28)

-- commands
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

-- ## 3rd part

-- to check the how many tables we have in the current database
-- \dt
-- psql -U postgres -d postgresql_part1 -f part1/03_first_table.sql
-- psql -U postgres -d postgresql_part1
-- export PGPASSWORD=admin
-- \dt basics.*
-- SELECT * FROM basics.students;

--- to create the table
-- CREATE TABEL schemaname.tabelname( column1 datatype, column2 datatype, column3 datatype );

-- to insert the data into the table
 -- INSERT INTO schemaname.tabelname (column1, column2, column3)
 -- VALUES (value1, value2, value3);

-- if your are inside the psql shell
-- we want to run the sql file, we can use the command \i
-- \i part1/03_first_table.sql