Select 
    orderid as order_id,
    paymentmethod,
    status,
    amount,
    created,
    _batched_at as batch_id 
    from raw.stripe.payment