with source as (
      select * from {{ source('airbnb', 'hosts') }}
),
renamed as (
    select
        

    from source
)
select * from renamed
  