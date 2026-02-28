-- How many orders had more than 90 items? --

SELECT product, COUNT(quantity) AS total_order
FROM amazon_staging2
GROUP BY product
HAVING total_order > 90;