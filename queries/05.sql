-- Which customers signed up during 2024?

SELECT 
    customer_name,
    signup_date
FROM
    customers
WHERE
    signup_date >= '2024-01-01' AND
    signup_date < '2025-01-01'
ORDER BY
    signup_date DESC