SELECT 
	sum(amount) AS total_revenue,
	avg(amount) AS average_sale_without_null,
	sum(amount) / count(*) AS avg_sale_real,
	max(amount) AS expensive_sale,
	min(amount) AS cheapest_sale
FROM sales;

SELECT 
	sum(amount) AS total_revenue,
	product
FROM sales
WHERE region = 'North';

SELECT
	max(amount) AS most_expensive
FROM sales
WHERE product = 'Laptop';

SELECT 
	sum(amount) / count(*) As averege_sale
FROM sales;

SELECT 
	min(sale_date) AS earliest_sale,
	max(sale_date) AS latest_sale
FROM sales;