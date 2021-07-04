Select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- Convert cents to dollar amount
    {{ dollar_to_cent('amount') }} as amount,
    created as created_at,
    _batched_at as batch_id 
    from {{source('stripe','payment')}}
    -- raw.stripe.payment