-- Type of Payment --

SELECT payment_method, COUNT(*) AS payment_type
FROM amazon_staging2
GROUP BY payment_method
ORDER BY payment_type DESC;