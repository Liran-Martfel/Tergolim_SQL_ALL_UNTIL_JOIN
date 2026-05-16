SELECT 
	rep_name AS saller,
	coalesce (sum(amount), 0) AS total_revenue
FROM sales
GROUP BY rep_name;

SELECT 
	product,
	round(avg(amount),2) AS AVG_price
FROM sales
GROUP BY product
ORDER BY AVG_PRICE DESC;


SELECT
	rep_name AS saller,
	sum(amount) AS total_sales,
	sum(case when product = 'Phone' then 1 else 0 end) AS phone_sales_count,
	sum(case when amount > 1000 then 1 else 0 end) As sales_above_1000
FROM sales
GROUP BY rep_name;


SELECT 
	rep_name AS saller,
	coalesce(sum(amount),0) AS total_sales,
	round(avg(amount),2) AS averege_sale,
	count(case when product = 'Phone' then 1 end) AS phone_sales_count,
	count(case when amount > 1000 then 1 end) AS sales_above_1000
FROM sales
GROUP BY rep_name
HAVING total_sales > 0
ORDER BY total_sales DESC;
