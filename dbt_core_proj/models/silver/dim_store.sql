with source as (
        select * from {{ source('retail_source', 'dim_store') }}
  ),
  renamed as (
      select
          {{ adapter.quote("store_id") }},
        {{ adapter.quote("store_name") }},
        {{ adapter.quote("city") }},
        {{ adapter.quote("state") }},
        {{ adapter.quote("region") }},
        {{ adapter.quote("store_type") }}

      from source
  )
  select * from renamed
    