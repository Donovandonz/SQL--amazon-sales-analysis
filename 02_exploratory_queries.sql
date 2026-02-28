-- Most ordered product by category --

SELECT category, product, 
	COUNT(*) AS total_order
FROM amazon_staging2
GROUP BY category, product
ORDER BY total_order DESC;