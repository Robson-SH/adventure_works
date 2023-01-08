with
    person_address as (
        select
            cast(addressid as string) as address_id
            , city
            , cast(stateprovinceid as string) as state_province_id
        from {{source('stg_adventure_works','person_address')}}
    )
select *
from person_address