with
    order_detail as (
        select
            sales_order_detail_id
            , sales_order_id
            , order_qty
            , product_id
            , unit_price
        from {{ref('stg_sales_order_detail')}}
    )
select *
from order_detail