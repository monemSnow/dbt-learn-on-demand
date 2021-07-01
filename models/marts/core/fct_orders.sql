WITH orders as (
    select * from {{ref('stg_orders')}}
),
payments as (
    select * from {{ref('stg_payments')}}
)
select 
    orders.order_id
    ,orders.customer_id
    ,sum(coalesce(payments.amount,0)) as amount
     from orders
        left join payments on payments.order_id=orders.order_id and payments.status = 'success'
    group by
        orders.order_id
        ,orders.customer_id