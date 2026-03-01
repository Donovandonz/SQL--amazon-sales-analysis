# SQL Project - 🛒 Amazon Sales Analysis 

📌 Project Overview
This project analyzes Amazon sales data using SQL to uncover key business insights about product performance, customer behavior, and sales trends. The analysis includes data cleaning, transformation, and exploratory queries to answer real-world business questions.

# Dataset used
- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/amazon_sales_data%202025.csv">RAW.Amazon-datasets</a>

---

## 🛢️ Database & Tools
- **Database**: MySQL
- **Tool Used**: MySQL Workbench
- **Techniques**: Data cleaning, CTEs, aggregations, date functions, filtering, and grouping

---

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

---

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

---

## 📊 Key Business Questions Answered

| # | Question | SQL File |
|---|----------|----------|
| 1 | What is the date range of orders in the dataset? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/01_exploratory_queries.sql">01_exploratory_queries.sql</a>|
| 2 | Which products are most ordered by category? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/02_exploratory_queries.sql">02_exploratory_queries.sql</a>|
| 3 | What payment methods do customers prefer? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/03_exploratory_queries.sql">03_exploratory_queries.sql</a>|
| 4 | What are the least and most expensive items? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/04_exploratory_queries.sql">04_exploratory_queries.sql</a> |
| 5 | How much revenue does each product generate? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/05_exploratory_queries.sql">05_exploratory_queries.sql</a>|
| 6 | What is the average price per category? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/06_exploratory_queries.sql">06_exploratory_queries.sql</a> |
| 7 | How many orders are placed each day? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/07_exploratory_queries.sql">07_exploratory_queries.sql</a> |
| 8 | What are the top 5 revenue-generating products? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/08_business_insights.sql">08_business_insights.sql</a> |
| 9 | Where are customers located? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/09_business_insights.sql">09_business_insights.sql</a>|
| 10 | What is the order status distribution? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/10_business_insights.sql">10_business_insights.sql</a>|
| 11 | Which products had more than 90 orders? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/11_business_insights.sql">11_business_insights.sql</a>|
| 12 | What are the least ordered items? |- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/12_business_insights.sql">12_business_insights.sql</a> |

## 💡 Key Insights

### 🏆 **Top 5 Revenue-Generating Products**
| Rank | Product | Total Revenue |
|------|---------|---------------|
| 1 🥇 | **Refrigerator** | $312,000 |
| 2 🥈 | **Laptop** | $233,600 |
| 3 🥉 | **Smartphone** | $194,000 |
| 4 | **Washing Machine** | $108,000 |
| 5 | **Smartwatch** | $63,000 |

### 📈 **Category Insights**
- **Electronics dominate** the top 5 with 4 out of 5 products
- **Refrigerator** is the clear revenue leader at $312,000
- **Smartwatch** has potential for growth as the lowest in top 5 at $63,000

---

### 💳 **Payment Preferences**

| Rank | Payment Method | Transaction Count | % of Total |
|------|----------------|-------------------|------------|
| 1 🥇 | **PayPal** | 240 | 24.0% |
| 2 🥈 | **Credit Card** | 216 | 21.6% |
| 3 🥉 | **Debit Card** | 212 | 21.2% |
| 4 | **Gift Card** | 168 | 16.8% |
| 5 | **Amazon Pay** | 164 | 16.4% |

**Key Payment Insights:**
- **PayPal** leads as the most popular payment method with 240 transactions (24%)
- **Credit Card** and **Debit Card** together account for **42.8%** of all transactions
- Digital payments (**PayPal + Amazon Pay**) make up **40.4%** of transactions
- Payment methods are fairly distributed, with only **7.6%** difference between 1st and 5th place

---

### 📦 **Order Patterns**
- **Date Range**: From 2025-02-02 to 2025-04-02 (59 days of data)
- **Products with 90+ orders**:

| Product | Order Count |
|---------|-------------|
| **Smartphone** | 140 |
| **Smartwatch** | 136 |
| **Running Shoes** | 108 |
| **Headphones** | 100 |
| **Book** | 100 |
| **Laptop** | 96 |
| **Refrigerator** | 96 |

**Key Order Pattern Insights:**
- **Smartphone** leads in order volume with 140 orders, despite being #3 in revenue
- **Smartwatch** shows strong order volume (136) but lower revenue, indicating lower price point
- **7 products** exceeded 90+ orders in just 59 days
- **Running Shoes** (108) is the only non-electronics item in the high-volume list

---

### 🌍 **Customer Distribution**
- **Top Customer Locations**:

| Rank | Location | Customer Count | % of Total |
|------|----------|----------------|------------|
| 1 🥇 | **Houston** | 128 | 12.2% |
| 2 🥈 | **Miami** | 124 | 11.8% |
| 3 🥉 | **Dallas** | 116 | 11.1% |
| 4 | **Boston** | 104 | 9.9% |
| 5 | **Denver** | 104 | 9.9% |
| 6 | **New York** | 104 | 9.9% |
| 7 | **Chicago** | 88 | 8.4% |
| 8 | **Seattle** | 88 | 8.4% |
| 9 | **San Francisco** | 76 | 7.3% |
| 10 | **Los Angeles** | 68 | 6.5% |


**Key Customer Location Insights:**
- **Texas dominates** with **Houston (128)** and **Dallas (116)** both in top 3 - total of 244 customers from Texas!
- **Miami** ranks #2 with 124 customers, showing strong Florida presence
- **Top 3 cities (Houston, Miami, Dallas)** account for **36.8%** of all customers
- **Boston, Denver, and New York** are tied with 104 customers each
- **Los Angeles** has the lowest customer count (68) despite being a major city



### 📈 **Category Insights**
- **Average Price Category**: 
- **Most Ordered Product by Category**:

| Category | Product | Order Count | AVG Price per Product |
|----------|---------|-------------|-----------------------|
| Electronics | Smartphone | 140 | $375 |
| Footwear | Running Shoes | 108 | $60 |
| Books | Book | 100 | $15 |
| Home Appliances | Refrigerator | 96 | $960 |
| Clothing | T-Shirt | 80 | $30 |

**Key Order Pattern Insights:**
- **Smartphone** leads in order volume with 140 orders
- **7 products** exceeded 90+ orders in just 59 days
- **Electronics dominates** with 4 out of 7 products in the 90+ club

---

### 📊 **Order Status**

| Status | Count | Percentage |
|--------|-------|------------|
| ✅ **Completed** | 352 | 35.2% |
| ⏳ **Pending** | 340 | 34.0% |
| ❌ **Cancelled** | 308 | 30.8% |

**Key Order Status Insights:**
- **Completed orders** lead at 35.2% (352 orders)
- **High cancellation rate** of 30.8% (308 orders) - worth investigating why
- **Pending orders** at 34% (340 orders) show potential for conversion
- Only **1.2% difference** between Completed and Pending - very close race!

---

## 🛠️ Full Data analysis code (SQL)
- <a href="https://github.com/Donovandonz/SQL--amazon-sales-analysis/blob/main/Full%20project%20SQL-code.sql">Amazon-sales-analysis-SQL</a>
