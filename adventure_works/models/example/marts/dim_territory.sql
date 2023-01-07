with
    final as (
        select
            {{ dbt_utils.surrogate_key(['territory_id']) }} as territory_sk
            , territory_id
            , territory_name
            , country_region_code
            , salesytd
            , sales_last_year
            , region_group
        from {{ref('stg_territory')}}
    )
select *
from final