-- AND -> every condition must be true
-- OR -> atleast one condition must be true
-- NOT -> reverse/exclude a condition

-- AND example
-- filter -> products is electronic and price is greater than 1000

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics' AND price > 100;


-- OR example
-- filter -> products is electronic or furniture

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics' OR category = 'furniture';


-- NOT example (exclude a particular condition)
-- some products are not stationery, so we want to exclude them

-- SELECT name, category, price
-- FROM products
-- WHERE NOT category = 'stationery';


-- using parentheses to group conditions (complex logic)

-- SELECT name, category, price, stock
-- FROM products
-- WHERE (category = 'electronics' or category = 'furniture')
--     AND stock > 0;


-- complex logic

SELECT name, category, price, stock, is_active
FROM products
WHERE is_active = TRUE AND (price < 1000 or stock >= 100);

-- commands

-- ## 6th part
-- psql -U postgres -d postgresql_part1 -f part2/06_and_or_not_filters.sql
-- psql -U postgres -d postgresql_part1
-- export PGPASSWORD=admin

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