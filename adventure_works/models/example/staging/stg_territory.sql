with
    territory as (
        select
            CAST(territoryid as string) as territory_id
            , name as territory_name
            , countryregioncode as country_region_code
            , salesytd
            , saleslastyear as sales_last_year
            , case
                when countryregioncode in ('US','CA') then 'North America'
                when countryregioncode in ('FR','DE','GB') then 'Europe'
                when countryregioncode in ('AU') then 'Pacific'
                else 'Sem categoria'
            end as region_group
        from {{ source('stg_adventure_works', 'sales_salesterritory')}}
    )
select *
from territory