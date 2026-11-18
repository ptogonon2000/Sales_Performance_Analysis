-- What are the five most frequently ordered products by total quantity?

SELECT
    COUNT(oi.quantity) AS total_quantity,
    p.product_name
FROM
    order_items oi
INNER JOIN products p ON oi.product_id = p.product_id
INNER JOIN orders o ON o.order_id = oi.order_id
WHERE
    o.order_status = 'Delivered'
GROUP BY
    oi.quantity,
    p.product_name
ORDER BY
    total_quantity DESC
LIMIT 5
