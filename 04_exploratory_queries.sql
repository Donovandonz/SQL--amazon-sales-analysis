-- What are the least and most expensive items? --

SELECT product, price
FROM amazon_staging2
GROUP BY product, price
ORDER BY price DESC;