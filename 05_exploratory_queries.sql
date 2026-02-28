-- How much sales per product? --

SELECT product, COUNT(quantity) AS quantity, SUM(total_sales) AS total_revenue
FROM amazon_staging2
GROUP BY product
ORDER BY total_revenue DESC;