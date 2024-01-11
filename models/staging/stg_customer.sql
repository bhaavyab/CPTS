with
    source as (select * from {{ source("public", "Customer") }}),
 
transformed as (
  select 
    customerid,
    firstname,
    lastname,
    email,
    phone
  from source
)
select * from transformed