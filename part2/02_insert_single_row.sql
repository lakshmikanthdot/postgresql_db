
INSERT INTO products (name, category, price, stock, sku, description)
VALUEs (
    'Laptop stand 03',
    'electronics',
    '5000.00',
    23,
    'ELEC-KEY-003',
    'laptop stand description'
);

SELECT * FROM products WHERE sku = 'ELEC-KEY-003';


-- commands

-- ## 2nd part
-- psql -U postgres -d postgresql_part1 -f part2/02_insert_single_row.sql
-- psql -U postgres -d postgresql_part1

-- ## 1st part
-- psql -U postgres -d postgresql_part1 -f part2/01_sql_concepts_base_file.sql
-- psql -U postgres -d postgresql_part1