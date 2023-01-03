with 
    sales_order_header as (
        select 
            salesorderid as sales_order_id
            , orderdate as order_date
            , status
            , customerid as customer_id
            , salespersonid as sales_person_id
            , territoryid as territory_id 
            , creditcardid as credit_card_id
            , totaldue as total_due
        from adventure_works.sales_salesorderheader
    )
select *
from sales_order_header