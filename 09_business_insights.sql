-- View the details of the highest spend order. What insights can you gather from the results? --

SELECT category, customer_location, COUNT(product) AS num_items
FROM amazon_staging2
WHERE product IN ('Refrigerator','Laptop','Smartphone','Washing Machine','Smartwatch')
GROUP BY category, customer_location
ORDER BY num_items DESC;
