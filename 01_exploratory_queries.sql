-- Date Ranges --

SELECT 
    MIN(Date) AS earliest_order,
    MAX(Date) AS latest_order,
    DATEDIFF(MAX(Date), MIN(Date)) AS days_span
FROM amazon_staging2;