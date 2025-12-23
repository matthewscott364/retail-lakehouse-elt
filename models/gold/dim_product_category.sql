{{ config(schema='retail_gold') }}

SELECT DISTINCT
    product_category
FROM {{ ref('stg_retail_sales') }}