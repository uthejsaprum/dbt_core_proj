{{ config(
    materialized='table',
    alias='stores'
) }}

select * from {{ ref('dim_store') }}