with
    customer as (
        select
            CAST(customerid as string) as customer_id
            , CAST(personid as string) as person_id
            , CAST(storeid as string) as store_id
        from {{ source('stg_adventure_works', 'sales_customer') }}
    )
select *
from customer