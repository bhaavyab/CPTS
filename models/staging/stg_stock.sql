with
    source as (select * from {{ source("public", "Stock") }}),
transformed as (
  select 
    productid,
    stockonhand,
    reorderlevel
  from source
)
select * from transformed