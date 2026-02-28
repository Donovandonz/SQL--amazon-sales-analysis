-- Status of order rate --

SELECT status, COUNT(status) AS status
FROM amazon_staging2
GROUP BY status
ORDER BY status DESC;