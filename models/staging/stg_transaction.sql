with
    source as (select * from {{ source("public", "Transaction") }}),
transformed as (
  select 
    transactionid,
    customerid,
    productid,
    quantity,
    totalamount,
    TRANSACTIONDATE
  from source
)
select * from transformed