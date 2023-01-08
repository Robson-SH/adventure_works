with 
    business_address as (
        select
            cast(businessentityid as string) as business_entity_id
            , cast(addressid as string) as address_id
        from {{source('stg_adventure_works', 'person_businessentityaddress')}}
    )
select *
from business_address