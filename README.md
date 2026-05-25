# Customer Subscription EDA & Revenue Insights

## Project Overview

This project analyzes customer subscription data for a fictional telecommunications company to identify churn patterns, recurring revenue risk, high-risk customer segments, and business opportunities for improving retention.

The goal is to simulate a realistic data analyst workflow using Python, SQL, Excel, dashboard planning, and business storytelling. The project moves from raw data cleaning to exploratory analysis, SQL validation, Excel validation, and final business recommendations.

## Business Problem

Customer churn can reduce recurring revenue, increase customer acquisition pressure, and reveal gaps in pricing, service quality, support experience, or competitive positioning.

This project investigates which customer groups are most likely to churn, how churn affects monthly revenue, and which retention strategies the company should prioritize.

## Key Business Questions

1. What is the overall customer churn rate?
2. How much monthly revenue is associated with churned customers?
3. Are churned customers higher-value than retained customers?
4. Which contract types have the highest churn rates?
5. How does customer tenure relate to churn?
6. Are higher monthly charge customers more likely to churn?
7. Which internet service types and payment methods are associated with higher churn?
8. What are the most common churn reasons?
9. Which combined customer segment represents the highest churn risk?
10. How can the company use these findings to improve retention?

## Tools Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL
- DuckDB
- Excel
- GitHub
- Tableau or Power BI, planned

## Project Structure

```text
customer-subscription-eda-revenue-insights/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   └── 02_exploratory_analysis.ipynb
│
├── sql/
│   ├── 00_create_tables.sql
│   ├── churn_analysis.sql
│   ├── revenue_analysis.sql
│   └── customer_segments.sql
│
├── excel/
│   └── subscription_validation_workbook.xlsx
│
├── dashboard/
│   ├── dashboard_plan.md
│   └── screenshots/
│
├── reports/
│   ├── eda_summary_metrics.csv
│   └── final_business_insights.md
│
├── README.md
├── requirements.txt
└── .gitignore