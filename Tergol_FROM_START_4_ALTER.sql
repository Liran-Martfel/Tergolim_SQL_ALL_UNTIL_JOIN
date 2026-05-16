--ALTER TABLE sales
--ADD COLUMN tier TEXT;

SELECT *
FROM sales;

update sales
SET tier = 'High'
WHERE amount > 1000;

UPDATE sales
SET tier = 'LOW'
WHERE amount <= 1000;


--ALTER TABLE sales
--ADD COLUMN tax REAL DEFAULT 0;


UPDATE sales
SET tax = amount * 0.07;

ALTER TABLE sales
RENAME to sales_backup;

ALTER TABLE sales_backup
RENAME to sales;

ALTER TABLE sales
RENAME COLUMN product to item;

ALTER TABLE sales
RENAME COLUMN item to product;

ALTER TABLE sales
DROP COLUMN tier;

SELECT *
FROM sales;
