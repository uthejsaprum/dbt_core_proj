{{ config(
    materialized='table',
    alias='dates'
) }}

select * from {{ ref('dim_date') }}