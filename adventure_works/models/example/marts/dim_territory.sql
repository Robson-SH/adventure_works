with
    final as (
        select
             territory_id
            , territory_name
            , country_region_code
            , salesytd
            , sales_last_year
            , region_group
        from {{ref('stg_territory')}}
    )
select *
from final