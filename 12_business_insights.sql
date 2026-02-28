-- 2. What were the least ordered items? What categories were they in? --

SELECT category, product, price, SUM(quantity) AS total_order
FROM amazon_staging2
GROUP BY category, product, price
ORDER BY total_order
LIMIT 5;