
-- Top 5 Products by Sales
SELECT p.product_name, SUM(o.order_amount) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Monthly Revenue
SELECT DATE_TRUNC('month', order_date) AS month, SUM(order_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- Repeat Customers (made more than 1 order)
SELECT c.name, COUNT(o.order_id) AS orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;

-- Region-wise Customer Count
SELECT city, COUNT(*) AS customers
FROM customers
GROUP BY city;
