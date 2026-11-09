SELECT
    segment_id,
    UPPER(segment_name) AS segment_name,
    description
FROM {{ ref('dim_customer_segments') }}