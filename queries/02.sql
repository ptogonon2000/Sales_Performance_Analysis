-- How many orders were placed in each year?

SELECT
    COUNT(order_id) AS total_orders,
    EXTRACT(YEAR FROM order_date) AS year
FROM
    orders
GROUP BY
    year
ORDER BY
    year ASC