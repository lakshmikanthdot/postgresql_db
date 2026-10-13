-- get products from the one particular category
-- in ecommerce, we can use this query to get all the products from a particular category
-- /products?category=electronics


-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics';

-- find the some products where the price is greater than 1000
-- SELECT name, category, price 
-- FROM products
-- WHERE price > 1000;

-- find products which are not active
SELECT name, category, price, is_active
FROM products
WHERE is_active = FALSE;



-- commands

-- ## 5th part
-- psql -U postgres -d postgresql_part1 -f part2/05_where_basic_filter.sql
-- psql -U postgres -d postgresql_part1

-- filter the products based on the category
-- SELECT column1, column2, column3 FROM table_name WHERE column_name = 'electronics';

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