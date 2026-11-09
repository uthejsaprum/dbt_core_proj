{{ config(
    materialized='table',
    alias='products'
) }}

select * from {{ ref('dim_product') }}