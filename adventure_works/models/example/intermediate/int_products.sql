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
    , products as (
        select
            product_id
            , product_name
        from {{ref('stg_products')}}   
    )
    , join_data as (
        select
            order_detail.sales_order_detail_id
            , order_detail.sales_order_id
            , order_detail.order_qty
            , order_detail.product_id
            , order_detail.unit_price
            , products.product_name
        from order_detail
        left join products
            on products.product_id = order_detail.product_id
    )
select *
from join_data