-- Churn Analysis Queries
-- Project: Customer Subscription EDA & Revenue Insights
-- Description: SQL queries used to analyze churn patterns across customer groups.

-- 1. Overall churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(churn_value) AS churned_customers,
    COUNT(*) - SUM(churn_value) AS retained_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct
FROM customers;

-- 2. Churn rate by contract type
SELECT
    contract,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM customers
GROUP BY contract
ORDER BY churn_rate_pct DESC;

-- 3. Churn rate by tenure group
SELECT
    tenure_group,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(AVG(cltv), 2) AS avg_cltv
FROM customers
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '0-12 Months' THEN 1
        WHEN '13-24 Months' THEN 2
        WHEN '25-48 Months' THEN 3
        WHEN '49-72 Months' THEN 4
    END;

-- 4. Churn rate by monthly charge group
SELECT
    monthly_charge_group,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue
FROM customers
GROUP BY monthly_charge_group
ORDER BY
    CASE monthly_charge_group
        WHEN 'Low Monthly Charge' THEN 1
        WHEN 'Medium Monthly Charge' THEN 2
        WHEN 'High Monthly Charge' THEN 3
    END;

-- 5. Churn rate by internet service type
SELECT
    internet_service,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue
FROM customers
GROUP BY internet_service
ORDER BY churn_rate_pct DESC;

-- 6. Churn rate by payment method
SELECT
    payment_method,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue
FROM customers
GROUP BY payment_method
ORDER BY churn_rate_pct DESC;