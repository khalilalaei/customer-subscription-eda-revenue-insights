-- Revenue Analysis Queries
-- Project: Customer Subscription EDA & Revenue Insights
-- Description: SQL queries used to analyze subscription revenue and revenue risk from churn.

-- 1. Monthly revenue impact of churn
SELECT
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue,
    ROUND(SUM(CASE WHEN churn_value = 1 THEN monthly_charges ELSE 0 END), 2) AS churned_monthly_revenue,
    ROUND(SUM(CASE WHEN churn_value = 0 THEN monthly_charges ELSE 0 END), 2) AS retained_monthly_revenue,
    ROUND(
        SUM(CASE WHEN churn_value = 1 THEN monthly_charges ELSE 0 END)
        / SUM(monthly_charges) * 100,
        2
    ) AS revenue_churn_share_pct
FROM customers;

-- 2. Average monthly charges by churn status
SELECT
    churn_label,
    COUNT(*) AS customers,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue
FROM customers
GROUP BY churn_label
ORDER BY avg_monthly_charges DESC;

-- 3. Revenue by contract type
SELECT
    contract,
    COUNT(*) AS customers,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct
FROM customers
GROUP BY contract
ORDER BY total_monthly_revenue DESC;

-- 4. Revenue by monthly charge group
SELECT
    monthly_charge_group,
    COUNT(*) AS customers,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct
FROM customers
GROUP BY monthly_charge_group
ORDER BY
    CASE monthly_charge_group
        WHEN 'Low Monthly Charge' THEN 1
        WHEN 'Medium Monthly Charge' THEN 2
        WHEN 'High Monthly Charge' THEN 3
    END;

-- 5. Average CLTV by churn status
SELECT
    churn_label,
    COUNT(*) AS customers,
    ROUND(AVG(cltv), 2) AS avg_cltv,
    ROUND(SUM(cltv), 2) AS total_cltv
FROM customers
GROUP BY churn_label
ORDER BY avg_cltv DESC;