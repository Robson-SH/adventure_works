with
    final as (
        select
            sales_order_id
            , sales_reason_id
            , reason_name
            , reason_type
        from {{ref('int_sales_reason')}}
    )
select *
from final