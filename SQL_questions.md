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

## Intermediate — joins and business KPIs

9. What is total recognized revenue by year?
10. Show revenue, cost, gross profit, and gross margin by product category.
11. Which five products generated the highest recognized revenue?
12. Which regions generated the highest revenue and gross profit?
13. Who are the top 10 customers by recognized revenue?
14. What is the monthly revenue trend from 2023 to 2025?
15. What is average order value (recognized revenue / distinct recognized orders) by year?
16. Which sales representatives generated the highest revenue?
17. What percentage of orders are cancelled, processing, shipped, and delivered?
18. Which products have a gross margin below 20%?
19. What is the average discount by product category?
20. Which customers have placed more than five recognized orders?

## Advanced — CTEs and window functions

21. Rank products by revenue within each category.
22. Calculate each region's percentage contribution to total recognized revenue.
23. Find each month's top-selling product by revenue.
24. Calculate month-over-month revenue growth percentage.
25. Find customers whose recognized revenue is above the overall customer average.
26. Calculate repeat-customer rate (customers with 2+ recognized orders / customers with 1+ recognized orders).
27. Compare sales reps by revenue and gross margin.
28. Calculate cumulative revenue by month across the full period.
29. Find products with zero recognized sales.
30. Find the top three customers in each region by recognized revenue.

## Data quality checks

31. Are there duplicate customer emails?
32. Are there orders with no matching order items?
33. Are there orphan order items with no matching order?
34. Are any discounts outside the 0–1 range?
35. Are any orders assigned to a sales rep whose assigned region differs from the order region?

## Business case questions

36. Which categories/products should management prioritize to improve profit? Use both gross profit and gross margin.
37. Which region should receive more marketing investment? Support the recommendation with revenue, order count, and margin.
38. Are higher discounts associated with lower gross margins? Quantify the relationship and discuss limitations.
39. Which customers should receive a loyalty campaign? Define a selection rule using order frequency and revenue.
40. Which region or sales rep needs support? Consider revenue, order count, AOV, and gross margin together.

## Portfolio deliverables

- SQL file with commented solutions.
- README explaining the business problem, schema, definitions, and findings.
- A dashboard covering executive KPIs, monthly trends, products/categories, regions, customers, and sales reps.
- A one-page summary with 3–5 evidence-based findings and recommendations.

**Dataset note:** All records are synthetic and intended for practice. Do not describe them as actual company results.
