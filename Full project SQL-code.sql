CREATE TABLE amazon_staging
LIKE amazon_sales;


INSERT amazon_staging
SELECT *
FROM amazon_sales;

SELECT *
FROM amazon_staging;


-- Check duplicate --


SELECT *,
ROW_NUMBER() OVER(
PARTITION BY order_id, `date`, product, category, price, quantity, total_sales, customer_name, customer_location, payment_method, `status`) AS row_num
FROM amazon_staging;

WITH duplicate_cte AS
(SELECT *,
ROW_NUMBER() OVER(
PARTITION BY order_id, `date`, product, category, price, quantity, total_sales, customer_name, customer_location, payment_method, `status`) AS row_num
FROM amazon_staging)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;


CREATE TABLE `amazon_staging2` (
  `order_id` text,
  `date` text,
  `product` text,
  `category` text,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_sales` int DEFAULT NULL,
  `customer_name` text,
  `customer_location` text,
  `payment_method` text,
  `status` text,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT *
FROM amazon_staging2;

INSERT INTO amazon_staging2
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY order_id, `date`, product, category, price, quantity, total_sales, customer_name, customer_location, payment_method, `status`) AS row_num
FROM amazon_staging;


SELECT *
FROM amazon_staging2
WHERE row_num > 1;

DELETE
FROM amazon_staging2
WHERE row_num > 1;

SELECT *
FROM amazon_staging2;


-- Update date Format --

SELECT `date`,
STR_TO_DATE(`date`, '%d-%m-%y')
FROM amazon_staging2;

UPDATE amazon_staging2
SET `date` = STR_TO_DATE(`date`, '%d-%m-%y');

ALTER TABLE amazon_staging2
MODIFY COLUMN `date` DATE;


-- There is No Null in the Data --

SELECT *
FROM amazon_staging2
WHERE 'order_id, `date`, product, category, price, quantity, total_sales, customer_name, customer_location, payment_method' = NULL;

-- Update Column --

ALTER TABLE amazon_staging2
DROP COLUMN row_num;


-- Date Ranges --

SELECT 
    MIN(Date) AS earliest_order,
    MAX(Date) AS latest_order,
    DATEDIFF(MAX(Date), MIN(Date)) AS days_span
FROM amazon_staging2;


-- Most ordered product by category --

SELECT category, product, 
	COUNT(*) AS total_order
FROM amazon_staging2
GROUP BY category, product
ORDER BY total_order DESC;


-- Type of Payment --

SELECT payment_method, COUNT(*) AS payment_type
FROM amazon_staging2
GROUP BY payment_method
ORDER BY payment_type DESC;


-- What are the least and most expensive items? --

SELECT product, price
FROM amazon_staging2
GROUP BY product, price
ORDER BY price DESC;


-- How much sales per product? --

SELECT product, COUNT(quantity) AS quantity, SUM(total_sales) AS total_revenue
FROM amazon_staging2
GROUP BY product
ORDER BY total_revenue DESC;


-- Average price per purchase --

SELECT category, AVG(price) AS avg_spend
FROM amazon_staging2
GROUP BY category
ORDER BY avg_spend DESC;


-- How many orders are made within this date range? --

SELECT `date`, COUNT(*) AS total_order
FROM amazon_staging2
GROUP BY `date`;


-- What were the top 5 revenue per product ordered? --

SELECT product, SUM(total_sales) AS total_revenue
FROM amazon_staging2
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;


-- View the details of the highest spend order. What insights can you gather from the results? --

SELECT category, customer_location, COUNT(product) AS num_items
FROM amazon_staging2
WHERE product IN ('Refrigerator','Laptop','Smartphone','Washing Machine','Smartwatch')
GROUP BY category, customer_location
ORDER BY num_items DESC;



-- Status of order rate --

SELECT status, COUNT(status) AS status
FROM amazon_staging2
GROUP BY status
ORDER BY status DESC;


-- How many orders had more than 90 items? --

SELECT product, COUNT(quantity) AS total_order
FROM amazon_staging2
GROUP BY product
HAVING total_order > 90;



-- 2. What were the least ordered items? What categories were they in? --

SELECT category, product, price, SUM(quantity) AS total_order
FROM amazon_staging2
GROUP BY category, product, price
ORDER BY total_order
LIMIT 5;



-- How many total of Customer from each Location? --

SELECT customer_location, COUNT(*) AS total_customer
FROM amazon_staging2
GROUP BY customer_location
ORDER BY total_customer DESC;


SELECT *
FROM amazon_staging2;
