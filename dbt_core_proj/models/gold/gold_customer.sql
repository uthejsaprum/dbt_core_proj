{{ config(
    materialized='table',
    alias='customers'
) }}

select * from {{ ref('dim_customer') }}