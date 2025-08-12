-- Task 6 - Sales Trend Analysis Using Aggregations
-- SQL script for PostgreSQL

-- Example for PostgreSQL
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(amount) AS total_revenue,
    COUNT(*) AS order_volume
FROM orders
GROUP BY month
ORDER BY month;

