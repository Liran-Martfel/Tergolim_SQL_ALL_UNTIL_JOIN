SELECT 
	sum(amount) AS total_revenue,
	region
FROM sales
group by region
HAVING total_revenue > 1500;

SELECT 
	product
FROM sales
group by product
HAVING count(*) >= 3;

SELECT 
	rep_name AS saller,
	sum(amount) / count (*) AS averege_sale
FROM sales
GROUP by rep_name
HAVING averege_sale > 900;

SELECT 
	rep_name AS saller,
	count(rep_name) AS amount_sell,
	product AS product
FROM sales
WHERE product IN ('Laptop','Phone')
GROUP BY rep_name
HAVING amount_sell > 1;

-- i can't write down sum(amount) > 1000 because where is not the currect commend, having is.