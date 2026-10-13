
INSERT INTO products(name, category, price, stock, sku, description)
VALUES 
('laptop stand 5', 'electronics', 100, 45, 'ELEC-LAP-100', 'laptop stand 5 desc'),
('laptop stand 6', 'electronics', 100, 45, 'ELEC-LAP-101', 'laptop stand 6 desc'),
('laptop stand 7', 'electronics', 100, 45, 'ELEC-LAP-102', 'laptop stand 7 desc');

-- to serach the inserted rows, you can use the following query:
SELECT name, category, price, stock, sku
FROM products
WHERE sku IN ('ELEC-LAP-100', 'ELEC-LAP-101', 'ELEC-LAP-102');

-- commands

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