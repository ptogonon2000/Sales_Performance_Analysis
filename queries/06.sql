-- What is the average list price by product category?

SELECT
    category,
    AVG(list_price) AS avg_price
FROM
    products
GROUP BY
    category
ORDER BY
    avg_price DESC