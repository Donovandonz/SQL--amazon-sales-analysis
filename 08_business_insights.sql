-- What were the top 5 revenue per product ordered? --

SELECT product, SUM(total_sales) AS total_revenue
FROM amazon_staging2
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;
