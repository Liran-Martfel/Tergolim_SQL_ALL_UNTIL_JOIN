SELECT 
	sum(amount) AS total_revenue,
	region
FROM sales
GROUP BY region
ORDER BY amount DESC;


SELECT 
	SUM(amount) / count(*) AS avg_revenue,
	product AS product
FROM sales
GROUP BY product
ORDER BY amount DESC;

SELECT 
	rep_name AS saler,
	sum(amount) AS revenue_sold
FROM sales
group by rep_name
ORDER BY revenue_sold DESC;

SELECT 
	rep_name,
	region,
	count(*) AS total_sales,
	sum(amount) AS total_revenue
FROM sales
GROUP BY region,rep_name;

SELECT 
	rep_name AS saler_name,
	count(product)
FROM sales
WHERE product = 'Laptop'
GROUP BY rep_name;


