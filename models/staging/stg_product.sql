with
    source as (select * from {{ source("public", "Product") }}),
transformed as (
  select 
    productid,
    productname,
    category,
    price,
    stockquantity
  from source
)
select * from transformed
 
