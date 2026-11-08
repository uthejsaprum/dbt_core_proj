with source as (
        select * from {{ source('retail_source', 'dim_customer') }}
  ),
  renamed as (
      select
          {{ adapter.quote("customer_id") }},
        {{ adapter.quote("customer_name") }},
        {{ adapter.quote("gender") }},
        {{ adapter.quote("city") }},
        {{ adapter.quote("state") }},
        {{ adapter.quote("country") }},
        {{ adapter.quote("registration_date") }}

      from source
  )
  select * from renamed
    