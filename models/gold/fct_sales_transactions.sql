{{ config(schema='retail_gold') }}

SELECT
    customer_id,
    product_category,
    quantity,
    price_per_unit,
    total_amount
FROM {{ ref('stg_retail_sales') }}