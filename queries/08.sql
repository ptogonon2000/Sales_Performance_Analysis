-- Show the 10 most recent orders with customer names and statuses.

SELECT
    o.order_date,
    o.order_status,
    c.customer_name
FROM
    orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY 
    o.order_date,
    o.order_status,
    c.customer_name
ORDER BY
    o.order_date DESC
LIMIT 10