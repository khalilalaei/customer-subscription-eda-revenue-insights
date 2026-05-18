-- Create customers table from cleaned CSV
-- Project: Customer Subscription EDA & Revenue Insights

CREATE OR REPLACE TABLE customers AS
SELECT *
FROM read_csv_auto('data/processed/telco_customer_churn_cleaned.csv');
