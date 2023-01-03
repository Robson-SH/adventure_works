with
    credit_card as (
        select
            creditcardid as credit_card_id
            , cardtype as card_type
        from {{ source('stg_adventure_works','sales_creditcard') }}
    )
select *
from credit_card