


-- commands

-- ## 13th part
-- psql -U postgres -d postgresql_part1 -f part2/13_update_multiple_rows.sql
-- psql -U postgres -d postgresql_part1

-- ## 12th part
-- psql -U postgres -d postgresql_part1 -f part2/12_update_single_row.sql
-- psql -U postgres -d postgresql_part1

-- ## 11th part
-- psql -U postgres -d postgresql_part1 -f part2/11_limit_offset_pagintion.sql
-- psql -U postgres -d postgresql_part1

-- ## 10th part
-- psql -U postgres -d postgresql_part1 -f part2/10_order_by.sql
-- psql -U postgres -d postgresql_part1


-- ## 9th part
-- psql -U postgres -d postgresql_part1 -f part2/09_null_and_is_not_null.sql
-- psql -U postgres -d postgresql_part1

-- ## 8th part
-- psql -U postgres -d postgresql_part1 -f part2/08_in_not_in_between.sql
-- psql -U postgres -d postgresql_part1

--  ## 7th part
-- psql -U postgres -d postgresql_part1 -f part2/07_like_ilike_patterns.sql
-- psql -U postgres -d postgresql_part1

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