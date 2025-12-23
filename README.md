# Retail Lakehouse ELT (AWS + Databricks + dbt)

## Overview
End-to-end ELT pipeline implementing Bronze, Silver, and Gold layers
using AWS S3, Databricks, Unity Catalog, and dbt Core.

## Architecture
S3 → Databricks Bronze → dbt Silver → dbt Gold

## Tech Stack
- AWS S3
- Databricks SQL + Unity Catalog
- dbt Core (Databricks adapter)
- Delta Lake

## Data Model
- dim_customer
- dim_product_category
- dim_date
- fct_sales_transactions

## Data Quality
- dbt tests (not null, unique)
- typed columns
- standardized schemas
