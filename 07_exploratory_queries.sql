-- How many orders are made within this date range? --

SELECT `date`, COUNT(*) AS total_order
FROM amazon_staging2
GROUP BY `date`;