-- How many orders are in each order status?

SELECT
    COUNT(order_status) AS total_order,
    order_status
FROM
    orders
GROUP BY
    order_status
ORDER BY
    total_order DESC