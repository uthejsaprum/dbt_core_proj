
{{ config(
    materialized='table',
    alias='sales'
) }}
select * from {{ ref('fact_sales') }}