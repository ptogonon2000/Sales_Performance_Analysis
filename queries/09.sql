-- What is total recognized revenue by year?

SELECT
    EXTRACT(YEAR FROM o.order_date) AS years,
    ROUND(SUM(oi.quantity * oi.unit_price)::NUMERIC, 2) AS total_revenue
FROM 
    orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE 
    o.order_status = 'Delivered'
GROUP BY 
    years
ORDER BY 
    years