with source as (
        select * from {{ source('retail_source', 'fact_sales') }}
  ),
  renamed as (
      select
          {{ adapter.quote("sales_id") }},
        {{ adapter.quote("customer_id") }},
        {{ adapter.quote("product_id") }},
        {{ adapter.quote("date_id") }},
        {{ adapter.quote("store_id") }},
        {{ adapter.quote("quantity") }},
        {{ adapter.quote("unit_price") }},
        {{ adapter.quote("discount") }},
        {{ adapter.quote("total_amount") }},
        {{ adapter.quote("payment_method") }}

      from source
  )
  select * from renamed
    