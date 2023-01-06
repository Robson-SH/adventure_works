with
    final as (
        select
            customer_id
            , person_id
            , store_id
        from {{ ref('stg_customer') }}
    )
select *
from final