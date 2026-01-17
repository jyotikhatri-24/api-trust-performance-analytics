# API Trust & Performance Analytics Platform

This project simulates how a Trust Infrastructure company (e.g., identity verification, fraud detection platforms) monitors and optimizes 100+ API services in production.

It mirrors a real-world Product Analytics system used to:
- Track API performance (latency, success rate, failure patterns)
- Ensure data quality for downstream models
- Diagnose why verifications fail
- Identify product and infrastructure bottlenecks
- Drive system-level product improvements

---

## What This System Does

Each row in the dataset represents a single API call with attributes like:

- API name & version  
- Region & client type  
- Document type  
- Status & error reason  
- Latency (ms)  

Using this data, the platform enables:

- **Performance Benchmarking**
  - p95 latency by API
  - Success rate by region
  - Failure rate by document type

- **Data Quality & Foundation**
  - Raw vs cleaned datasets
  - Validation of missing fields, invalid values, and schema drift
  - Creation of a production-ready dataset

- **Failure Root-Cause Analysis**
  - Top error reasons by API
  - Regional concentration of failures
  - Identification of fragile document types

---

## Architecture

data/
├── raw_api_logs.csv # Synthetic API logs (120k+ rows)
└── processed_api_logs.csv # Clean, production-ready dataset
notebooks/
├── 01_data_generation.ipynb # Synthetic API log generator
├── 02_data_quality_and_cleaning.ipynb # Data validation & cleaning pipeline
└── 03_dashboard_generation.ipynb # KPI & dashboard generation
sql/
├── schema.sql
├── performance_metrics.sql
└── failure_analysis.sql
dashboards/
├── api_latency_distribution.png
├── success_rate_by_region.png
└── failure_rate_by_document.png

---


## Key Dashboards

### API Latency Distribution  
Identifies slow APIs and infrastructure bottlenecks.
<img width="1470" height="956" alt="Screenshot 2026-01-17 at 7 25 32 PM" src="https://github.com/user-attachments/assets/d353b2a4-a318-4025-a8ab-4c0680f3364a" />

---

### Success Rate by Region  
Highlights coverage gaps and low-conversion geographies.
<img width="1470" height="956" alt="Screenshot 2026-01-17 at 7 26 14 PM" src="https://github.com/user-attachments/assets/1b1b968b-e83b-4d01-b95e-768f3a123508" />



---

### Failure Rate by Document Type  
Reveals fragile inputs impacting verification success.
<img width="1470" height="956" alt="Screenshot 2026-01-17 at 7 26 26 PM" src="https://github.com/user-attachments/assets/ee87d10e-0cea-4d83-9534-d9a101046719" />


These metrics answer real product questions like:
- “Which APIs are hurting our reliability?”
- “Why does conversion drop in Tier-2 regions?”
- “Which document types fail most often?”

---

## Example Product Insights

- PAN & Aadhaar OCR services show higher failure in low-bandwidth regions → Recommend fallback flows or adaptive image compression.
- Certain APIs exhibit high p95 latency → Prioritize infra optimization or caching.
- Document-specific failure clusters → Improve model training data and preprocessing.

---

## Why This Matters

This project reflects how Product Analysts operate in Trust & Infra platforms:

- Own data quality and foundation layers  
- Benchmark system performance continuously  
- Diagnose failures at scale  
- Translate system metrics into product and engineering actions  

It is designed to mirror the workflows inside high-scale API platforms powering identity, KYC, and fraud systems.


---

**Author:** Jyoti Khatri  
Data & Product Analytics | SQL • Python • Systems Thinking  
 



