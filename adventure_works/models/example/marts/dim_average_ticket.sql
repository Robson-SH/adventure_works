with
    average_ticket as (
        select *
        from {{ref('int_average_ticket')}}
    )
select *
from average_ticket