with
    order_details as (
        select
            sales_order_detail_id
            , sales_order_id
            , product_id
        from {{ref('stg_sales_order_detail')}}
    )
    , dim_sales_order_header as (
        select
            sales_order_sk
            , sales_order_id
        from {{ref('dim_sales_order_header')}}
    )
    , dim_products as (
        select
            product_sk
            , product_id
        from {{ref('dim_products')}}
    )
    , final as (
        select
            dim_sales_order_header.sales_order_sk as sales_order_fk
            , dim_products.product_sk as product_fk
            , order_details.sales_order_detail_id
            , order_details.sales_order_id
            , order_details.product_id
        from order_details
        left join dim_sales_order_header
            on dim_sales_order_header.sales_order_id = order_details.sales_order_id  
        left join dim_products
            on dim_products.product_id = order_details.product_id          
    )
select *
from final