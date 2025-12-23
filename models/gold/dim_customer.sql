{{ config(schema='retail_gold') }}

SELECT DISTINCT
    customer_id,
    gender,
    age
FROM {{ ref('stg_retail_sales') }}