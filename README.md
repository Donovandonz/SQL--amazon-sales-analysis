# SQL Project - 🛒 Amazon Sales Analysis 

## 📌 Project Overview
This project analyzes Amazon sales data using SQL to uncover key business insights about product performance, customer behavior, and sales trends. The analysis includes data cleaning, transformation, and exploratory queries to answer real-world business questions.

# Dataset used
- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/amazon_sales_data%202025.csv">RAW.Amazon-datasets</a>


## 🛢️ Database & Tools
- **Database**: MySQL
- **Tool Used**: MySQL Workbench
- **Techniques**: Data cleaning, CTEs, aggregations, date functions, filtering, and grouping


## 📂 Dataset Description
The dataset contains Amazon sales transactions with the following fields:

| Column | Description |
|--------|-------------|
| `order_id` | Unique order identifier |
| `date` | Order date (DD-MM-YY format) |
| `product` | Product name |
| `category` | Product category |
| `price` | Product price |
| `quantity` | Quantity ordered |
| `total_sales` | Total sales amount (price × quantity) |
| `customer_name` | Customer name |
| `customer_location` | Customer city/location |
| `payment_method` | Payment method used |
| `status` | Order status |

## 🔍 SQL Techniques Used
- ✅ **Table creation & cloning** (`CREATE TABLE ... LIKE`, `INSERT INTO ... SELECT`)
- ✅ **Duplicate detection** (`ROW_NUMBER()`, `PARTITION BY`)
- ✅ **Data cleaning** (removing duplicates, handling staging tables)
- ✅ **Date formatting** (`STR_TO_DATE()`, `ALTER TABLE MODIFY`)
- ✅ **Aggregations** (`SUM()`, `COUNT()`, `AVG()`)
- ✅ **Grouping & sorting** (`GROUP BY`, `ORDER BY`)
- ✅ **Filtering** (`WHERE`, `HAVING`)
- ✅ **Date functions** (`MIN()`, `MAX()`, `DATEDIFF()`)
- ✅ **Limit queries** (`LIMIT`)

## 📊 Key Business Questions Answered

| # | Question | SQL File |
|---|----------|----------|
| 1 | What is the date range of orders in the dataset? | `03_exploratory_queries.sql` |
| 2 | Which products are most ordered by category? | `03_exploratory_queries.sql` |
| 3 | What payment methods do customers prefer? | `03_exploratory_queries.sql` |
| 4 | What are the least and most expensive items? | `03_exploratory_queries.sql` |
| 5 | How much revenue does each product generate? | `03_exploratory_queries.sql` |
| 6 | What is the average price per category? | `03_exploratory_queries.sql` |
| 7 | How many orders are placed each day? | `03_exploratory_queries.sql` |
| 8 | What are the top 5 revenue-generating products? | `04_business_insights.sql` |
| 9 | Where are customers located? | `04_business_insights.sql` |
| 10 | What is the order status distribution? | `04_business_insights.sql` |
| 11 | Which products had more than 90 orders? | `04_business_insights.sql` |
| 12 | What are the least ordered items? | `04_business_insights.sql` |

## 💡 Key Insights

### 🏆 **Top Performers**
- **Top 5 Revenue Products**:
  1. [Your top product]
  2. [Your second top product]
  3. [Your third top product]
  4. [Your fourth top product]
  5. [Your fifth top product]

### 💳 **Payment Preferences**
- **Most Popular Payment Method**: [e.g., Credit Card/Debit Card/UPI]

### 📦 **Order Patterns**
- **Date Range**: From [earliest date] to [latest date] ([X] days of data)
- **Products with 90+ orders**: [List products]

### 🌍 **Customer Distribution**
- **Top Customer Locations**:
  - [Location 1]: [X] customers
  - [Location 2]: [X] customers
  - [Location 3]: [X] customers

### 📈 **Category Insights**
- **Highest Average Price Category**: [Category name]
- **Most Ordered Product by Category**:
  - [Category 1]: [Product]
  - [Category 2]: [Product]

### 📊 **Order Status**
- **Completed Orders**: [X]%
- **Pending/Cancelled/Returned**: [X]%

## 🛠️ Data Cleaning Process

### Step 1: Create Staging Table
```sql
CREATE TABLE amazon_staging LIKE amazon_sales;
INSERT INTO amazon_staging SELECT * FROM amazon_sales;
