-- Show revenue, cost, gross profit, and gross margin by product category.

-- Revenue – Quantity × Unit price.
-- Total Cost – Quantity × Product cost.
-- Gross Profit – Revenue − Total Cost.
-- Gross Margin – (Gross Profit / Revenue) × 100.
-- NULLIF() – Prevents division by zero.
-- JOIN – Connects order items with product details.



SELECT
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price)::NUMERIC, 2) AS revenue,
    ROUND(SUM(oi.quantity * p.unit_cost)::NUMERIC, 2) AS total_cost,
    ROUND((
        SUM(oi.quantity * oi.unit_price) -
        SUM(oi.quantity * p.unit_cost)
    )::NUMERIC, 2) AS gross_profit,    
    ROUND((
        (
            SUM(oi.quantity * oi.unit_price) -
            SUM(oi.quantity * p.unit_cost)
        ) / NULLIF(SUM(oi.quantity * oi.unit_price), 0) * 100
    )::NUMERIC, 2) AS gross_margin
FROM
    order_items oi
INNER JOIN
    products p ON oi.product_id = p.product_id
GROUP BY
    p.category
ORDER BY
    gross_profit DESC