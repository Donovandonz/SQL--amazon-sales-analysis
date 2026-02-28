-- Average price per purchase --

SELECT category, AVG(price) AS avg_spend
FROM amazon_staging2
GROUP BY category
ORDER BY avg_spend DESC;