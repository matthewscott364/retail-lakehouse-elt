{{ config(
    schema='retail_silver',
    alias='stg_retail_sales'
) }}

with src as (

  select *
  from {{ source('retail_bronze', 'retail_sales') }}

),

clean as (

  select
    cast(transaction_id as bigint) as transaction_id,
    to_date(date_raw, 'M/d/yyyy')  as transaction_date,
    cast(customer_id as string)    as customer_id,
    trim(gender)                   as gender,
    cast(age as int)               as age,
    trim(product_category)         as product_category,
    cast(quantity as int)          as quantity,
    cast(price_per_unit as double) as price_per_unit,
    cast(total_amount as double)   as total_amount,
    _ingest_ts,
    _source_file
  from src

)

select * from clean
