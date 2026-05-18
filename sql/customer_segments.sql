-- Customer Segment Queries
-- Project: Customer Subscription EDA & Revenue Insights
-- Description: SQL queries used to identify high-risk and high-value customer segments.

-- 1. Combined high-risk customer segment
WITH customer_segments AS (
    SELECT
        *,
        CASE
            WHEN contract = 'Month-to-month'
                AND internet_service = 'Fiber optic'
                AND payment_method = 'Electronic check'
            THEN 'High Risk'
            ELSE 'Other Customers'
        END AS high_risk_segment
    FROM customers
)

SELECT
    high_risk_segment,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue,
    ROUND(AVG(cltv), 2) AS avg_cltv
FROM customer_segments
GROUP BY high_risk_segment
ORDER BY churn_rate_pct DESC;

-- 2. Churn by CLTV group
SELECT
    cltv_group,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(cltv), 2) AS avg_cltv,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM customers
GROUP BY cltv_group
ORDER BY
    CASE cltv_group
        WHEN 'Low CLTV' THEN 1
        WHEN 'Medium CLTV' THEN 2
        WHEN 'High CLTV' THEN 3
    END;

-- 3. Churn by contract and internet service
SELECT
    contract,
    internet_service,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM customers
GROUP BY contract, internet_service
ORDER BY churn_rate_pct DESC;

-- 4. Churn by tenure group and payment method
SELECT
    tenure_group,
    payment_method,
    COUNT(*) AS customers,
    SUM(churn_value) AS churned_customers,
    ROUND(AVG(churn_value) * 100, 2) AS churn_rate_pct
FROM customers
GROUP BY tenure_group, payment_method
ORDER BY churn_rate_pct DESC;