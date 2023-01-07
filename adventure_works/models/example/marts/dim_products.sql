with 
    products as (
        select
            {{ dbt_utils.surrogate_key(['product_id']) }} as product_sk
            , product_id
            , product_name
        from {{ref('stg_products')}}
    )
select * from products