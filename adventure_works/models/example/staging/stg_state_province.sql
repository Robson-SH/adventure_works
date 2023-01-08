with
    state_province as (
        select
            cast(stateprovinceid as string) as state_province_id
            , countryregioncode as country_region_code
            , name as province_name
        from {{source('stg_adventure_works', 'person_stateprovince')}}
    )
select *
from state_province