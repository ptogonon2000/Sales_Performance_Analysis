-- How many orders were placed in each year?

SELECT
    COUNT(order_id) AS total_orders,
    EXTRACT(YEAR FROM order_date) AS year
FROM
    orders
WHERE order_status = 'Delivered'
GROUP BY
    year
ORDER BY
    year ASC