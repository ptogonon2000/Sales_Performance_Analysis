-- What is the average list price by product category?

SELECT
    category,
    ROUND(AVG(list_price)::NUMERIC, 2) AS avg_price
FROM
    products
GROUP BY
    category
ORDER BY
    avg_price DESC