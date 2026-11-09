SELECT
    o.sales_id,
    o.customer_id
FROM {{ ref('fact_sales') }} o
LEFT JOIN {{ ref('dim_customer') }} c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL