with 
    sales_order_header_sales_reason as (
        select 
            salesorderid as sales_order_id
            , salesreasonid as sales_reason_id
        from {{ source('stg_adventure_works','sales_salesorderheadersalesreason') }}
    )
select *
from sales_order_header_sales_reason