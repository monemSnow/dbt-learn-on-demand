    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{source('jaffle_shop','orders')}}
    -- raw.jaffle_shop.orders

    -- values for status column : returned, completed, shipped and placed
