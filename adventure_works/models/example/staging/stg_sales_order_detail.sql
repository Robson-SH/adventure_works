with
    sales_order_detail as (
        select
            salesorderdetailid as sales_order_detail_id
            , salesorderid as sales_order_id
            , orderqty as order_qty
            , productid as product_id
            , unitprice as unit_price
        from {{ source('stg_adventure_works','sales_salesorderdetail') }}
    )
select *
from sales_order_detail