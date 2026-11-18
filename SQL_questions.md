# Sales Performance Analysis — SQL Challenge Questions

## Business definitions

- Recognized sales include only `Delivered` and `Shipped` orders.
- Exclude `Processing` and `Cancelled` orders from revenue and profit metrics unless explicitly analyzing order status.
- Line net sales = `quantity * unit_price * (1 - discount)`.
- Line cost = `quantity * products.unit_cost`.
- Gross profit = line net sales minus line cost.
- Gross margin % = gross profit / net sales \* 100. Use `NULLIF` for safe division.
- `unit_price` is the actual pre-discount selling price. `discount` is a decimal fraction (0.10 = 10%).

## Beginner — filtering and aggregation

1. How many customers are in the database?
2. How many orders were placed in each year?
3. What are the five most frequently ordered products by total quantity?
4. How many orders are in each order status?
5. Which customers signed up during 2024?
6. What is the average list price by product category?
7. How many customers are there in each city?
8. Show the 10 most recent orders with customer names and statuses.
9. What is total recognized revenue by year?
10. Show revenue, cost, gross profit, and gross margin by product category.

**Dataset note:** All records are synthetic and intended for practice. Do not describe them as actual company results.
