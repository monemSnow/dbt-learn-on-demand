 select
        id as customer_id,
        first_name,
        last_name

  --select *  
  from 
  --raw.jaffle_shop.customers
  {{ source('jaffle_shop','customers')}}