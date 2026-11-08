with source as (
        select * from {{ source('retail_source', 'dim_date') }}
  ),
  renamed as (
      select
          {{ adapter.quote("date_id") }},
        {{ adapter.quote("full_date") }},
        {{ adapter.quote("day") }},
        {{ adapter.quote("month") }},
        {{ adapter.quote("month_name") }},
        {{ adapter.quote("quarter") }},
        {{ adapter.quote("year") }},
        {{ adapter.quote("day_name") }},
        {{ adapter.quote("is_weekend") }}

      from source
  )
  select * from renamed
    