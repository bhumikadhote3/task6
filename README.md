# task6
 Sales Trend Analysis Using Aggregations

# Task 6 - Sales Trend Analysis Using Aggregations

## Objective
Analyze monthly revenue and order volume from the `online_sales` dataset using PostgreSQL.

## Dataset
**orders table** with:
- `order_date` (date)
- `amount` (numeric)
- `product_id` (integer)

## PostgreSQL Query
```sql
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
```

## Steps
1. Load `online_sales_orders.csv` into PostgreSQL as a table named `orders`.
2. Run the query above in `psql` or any SQL client.
3. Export results to Excel for submission.

## Notes
- `TO_CHAR(order_date, 'YYYY-MM')` formats the date into `YYYY-MM`.
- `SUM(amount)` calculates total revenue per month.
- `COUNT(*)` counts total orders per month.

## Output Example (from dataset)
| month    | total_revenue | order_volume |
|----------|--------------:|-------------:|
| 2024-01 | 1150.39 | 6 |
| 2024-02 | 1855.08 | 7 |
| 2024-03 | 996.43 | 3 |
| 2024-04 | 1460.18 | 6 |
| 2024-05 | 1275.24 | 5 |
| 2024-06 | 732.60 | 3 |
| 2024-07 | 789.29 | 2 |
| 2024-08 | 895.01 | 5 |
| 2024-09 | 191.39 | 1 |
| 2024-10 | 1344.08 | 5 |
| 2024-11 | 833.67 | 4 |
| 2024-12 | 839.34 | 3 |

## Author
Data Analyst Internship - Task 6 Submission
