-- What is total recognized revenue by year?

SELECT
    SUM(oi.unit_price) AS total_revenue,
    EXTRACT(YEAR FROM o.order_date) AS year
FROM
    order_items oi
INNER JOIN orders o ON oi.order_id = o.order_id
GROUP BY
    year
ORDER BY
    year DESC