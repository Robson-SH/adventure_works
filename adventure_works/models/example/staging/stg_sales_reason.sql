with 
    sales_reason as (
        select
            salesreasonid as sales_reason_id
            , "name" as reason_name
            , reasontype as reason_type
        from {{ source('stg_adventure_works','sales_salesreason') }}
    )
select *
from sales_reason