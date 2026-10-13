
-- select * - returns every columns
-- select specific columns is going to return the columns that i want

-- gives all the columns in the table
-- SELECT * FROM products;

-- gives only the columns that i want
-- here we are selecting only the price column from the products table
-- SELECT price
-- FROM products;

-- AS creates an alias for the output of that column name
-- makes the columns name easier to read
-- output column much better way

SELECT 
  name AS product_name,
  price AS selling_price,
  stock AS available_quantity
FROM products;

-- commands

-- ## 4th part
-- psql -U postgres -d postgresql_part1 -f part2/04_select_specific_cols_vs_select_star.sql
-- psql -U postgres -d postgresql_part1

-- SELECT COLUMN_NAME AS ALIAS_NAME FROM TABLE_NAME;


-- ## 3rd part
-- psql -U postgres -d postgresql_part1 -f part2/03_insert_multiple_rows.sql
-- psql -U postgres -d postgresql_part1

-- to serach the multiple rows inserted, you can use the following query:
-- need to use WHERE IN
-- SELECT * FROM table_name WHERE column_name IN ('value1', 'value2', 'value3', ...);

-- ## 2nd part
-- psql -U postgres -d postgresql_part1 -f part2/02_insert_single_row.sql
-- psql -U postgres -d postgresql_part1

-- ## 1st part
-- psql -U postgres -d postgresql_part1 -f part2/01_sql_concepts_base_file.sql
-- psql -U postgres -d postgresql_part1