with source as (
        select * from {{ source('retail_source', 'dim_product') }}
  ),
  renamed as (
      select
          {{ adapter.quote("product_id") }},
        {{ adapter.quote("product_name") }},
        {{ adapter.quote("category") }},
        {{ adapter.quote("sub_category") }},
        {{ adapter.quote("brand") }},
        {{ adapter.quote("unit_price") }}

      from source
  )
  select * from renamed
    