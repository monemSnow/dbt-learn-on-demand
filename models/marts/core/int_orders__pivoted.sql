{% set payment_method = ['bank_transfer','coupon','credit_card','gift_card'] %}

with payments as (
    select *
    from {{ref('stg_payments')}}
)
select * from payments 