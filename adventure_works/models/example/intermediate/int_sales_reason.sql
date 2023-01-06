with
    sales_order_header_sales_reason as (
        select 
           sales_order_id
            ,sales_reason_id
        from {{ref('stg_sales_order_header_sales_reason')}}
    )
    , sales_reason as (
        select
           sales_reason_id
            , reason_name
            , reason_type
        from {{ref('stg_sales_reason')}}
    )
    , join_data as (
        select
            sales_order_header_sales_reason.sales_order_id as sales_order_id
            , sales_order_header_sales_reason.sales_reason_id as sales_reason_id
            , sales_reason.reason_name as reason_name
            , sales_reason.reason_type as reason_type
        from sales_order_header_sales_reason
        left join sales_reason
            on sales_reason.sales_reason_id = sales_order_header_sales_reason.sales_reason_id
    )
select *
from join_data