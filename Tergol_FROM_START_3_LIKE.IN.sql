--https://pythonai211225-rgb.github.io/sql/03_master/02-pattern-filters.html

DROP TABLE products;
CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL,
  category TEXT NOT NULL,
  price REAL NOT NULL,
  stock INTEGER
);

INSERT INTO products VALUES
  (1, 'Mouse Pro', 'Accessories', 49.0, 20),
  (2, 'Monitor 27', 'Displays', 289.0, 5),
  (3, 'Keyboard Lite', 'Accessories', 39.0, NULL),
  (4, 'Dock Station', 'Accessories', 129.0, 8),
  (5, 'Mini PC', 'Computers', 699.0, 3);
  
SELECT *
FROM products
WHERE product_name like '%pro';

SELECT *
FROM products
WHERE price BETWEEN 30 AND 150;

SELECT *
FROM products
WHERE category in ('Computers', 'Displays');

SELECT *
FROM products
WHERE stock IS NOT NULL;

SELECT *
FROM products
WHERE product_name GLOB 'M*';