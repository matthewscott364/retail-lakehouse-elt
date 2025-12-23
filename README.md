# 🏬 Retail Lakehouse ELT  
**AWS · Databricks · dbt · Delta Lake**

![AWS](https://img.shields.io/badge/AWS-S3-orange)
![Databricks](https://img.shields.io/badge/Databricks-Lakehouse-red)
![dbt](https://img.shields.io/badge/dbt-Core-green)
![Delta](https://img.shields.io/badge/Delta-Lake-blue)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

## 📌 Overview
This project implements an **end-to-end Lakehouse ELT pipeline** using **AWS S3**, **Databricks**, **Unity Catalog**, and **dbt Core**.  
The pipeline follows the **Bronze → Silver → Gold** architecture to ingest raw retail data, apply transformations, enforce data quality, and deliver analytics-ready datasets.

---

## 🧱 Architecture Summary

| Layer | Purpose | Technology |
|------|---------|------------|
| 🟦 Raw | Immutable source data | AWS S3 |
| 🟫 Bronze | Raw ingestion + metadata | Databricks Delta |
| 🟩 Silver | Cleaning, typing, validation | dbt Core |
| 🟨 Gold | Analytics star schema | dbt Core |

---

## 📐 Data Architecture Flow

```
┌────────────────────┐
│ 🟦 AWS S3 (Raw)     │
│ retail_sales.csv   │
│                    │
│ Immutable storage  │
└─────────┬──────────┘
          │ read_files()
          ▼
┌────────────────────┐
│ 🟫 Bronze Layer     │
│ Databricks Delta   │
│                    │
│ retail.retail_     │
│ bronze.retail_     │
│ sales              │
│                    │
│ + ingest metadata  │
└─────────┬──────────┘
          │ dbt source()
          ▼
┌────────────────────┐
│ 🟩 Silver Layer    │
│ dbt Staging Model  │
│                    │
│ stg_retail_sales   │
│                    │
│ • Typed columns    │
│ • Cleaned strings  │
│ • Data tests       │
└─────────┬──────────┘
          │ dbt ref()
          ▼
┌──────────────────────────────┐
│ 🟨 Gold Layer (Star Schema)  │
│ dbt Analytics Models         │
│                              │
│ • dim_customer               │
│ • dim_product_category       │
│ • fct_sales_transactions     │
│                              │
│ BI-ready analytics tables    │
└──────────────────────────────┘
```

**Figure:** End-to-end ELT pipeline using AWS S3 for raw storage, Databricks Delta for Bronze ingestion, dbt for Silver transformations, and Gold analytics models governed by Unity Catalog.

---

## 🛠 Tech Stack
- AWS S3  
- Databricks SQL  
- Unity Catalog  
- Delta Lake  
- dbt Core  
- GitHub  

---

## 📂 Data Models

### 🟩 Silver (Staging)
- `stg_retail_sales`
  - Standardized column names
  - Typed fields
  - Cleaned strings
  - Validated with dbt tests

### 🟨 Gold (Analytics)
- `dim_customer`
- `dim_product_category`
- `fct_sales_transactions`

---

## 🧪 Data Quality
- not_null tests
- unique tests
- Schema enforcement via dbt

---

## ▶️ How to Run

```bash
dbt run
dbt test
```

---

## 🎯 What This Project Demonstrates
- Cloud-native ELT architecture
- Databricks + Unity Catalog governance
- dbt-driven transformations and testing
- Bronze → Silver → Gold modeling
- Analytics-ready star schema design

---

## 📈 Future Enhancements
- Databricks Job orchestration
- Incremental dbt models
- BI dashboard (Power BI / Tableau)
- CI/CD with GitHub Actions
