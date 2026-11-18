-- How many customers are there in each city?

SELECT
    COUNT(customer_id) AS total_customer,
    city
FROM
    customers
GROUP BY
    city