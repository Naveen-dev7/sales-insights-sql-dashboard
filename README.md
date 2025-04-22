# Sales Insights Dashboard (SQL + Tableau)

A project that demonstrates extracting insights from a retail sales dataset using **SQL** and visualizing KPIs using **Tableau**.

## Problem Statement
Business users need quick and reliable insights from sales data to track performance, optimize operations, and make informed decisions.

## Tools Used
- **PostgreSQL / MySQL** (or any RDBMS)
- **SQL** (window functions, joins, aggregations)
- **Tableau / Power BI** (for dashboards)

## Dataset Overview
- `orders.csv` — order-level details
- `customers.csv` — customer profiles
- `products.csv` — product catalog

## Key Metrics
- Monthly Revenue
- Top 5 Products by Sales
- Region-wise Customer Growth
- Repeat Purchase Rate

## Folder Structure
├── data/ │ ├── orders.csv │ ├── customers.csv │ └── products.csv ├── queries/ │ └── sales_insights.sql ├── visuals/ │ └── dashboard_screenshot.png ├── README.md

## Example SQL Snippet
```sql
SELECT product_name, SUM(order_amount) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

Future Enhancements 

Add Python-based EDA (Exploratory Data Analysis)

Convert to a live dashboard using Power BI

Author 

Naveen Charan

