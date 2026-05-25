# Dashboard Plan: Customer Subscription EDA & Revenue Insights

## Dashboard Goal

The goal of this dashboard is to help business stakeholders understand customer churn, revenue risk, and high-risk customer segments.

The dashboard should answer:

- How many customers are churning?
- How much monthly revenue is tied to churned customers?
- Which customer groups have the highest churn rates?
- Which customer segments should the company prioritize for retention?

## Target Audience

This dashboard is designed for:

- Business analysts
- Customer retention teams
- Marketing teams
- Revenue operations teams
- Product or customer success managers

## Key Performance Indicators

The dashboard should include the following KPI cards:

1. Total Customers  
   - Value: 7,043

2. Overall Churn Rate  
   - Value: 26.54%

3. Total Monthly Revenue  
   - Value: $456,116.60

4. Churned Customer Monthly Revenue  
   - Value: $139,130.85

5. Revenue Churn Share  
   - Value: 30.50%

6. High-Risk Segment Churn Rate  
   - Value: 60.37%

## Recommended Dashboard Sections

### 1. Executive KPI Overview

This section should appear at the top of the dashboard.

Include KPI cards for:

- Total Customers
- Churn Rate
- Total Monthly Revenue
- Churned Customer Monthly Revenue
- Revenue Churn Share
- High-Risk Segment Churn Rate

Purpose:

Give stakeholders a quick snapshot of the scale of churn and its revenue impact.

### 2. Churn by Contract Type

Recommended chart:

- Bar chart

Fields:

- X-axis: contract
- Y-axis: churn rate

Key finding:

Month-to-month customers had the highest churn rate at 42.71%, compared with 11.27% for one-year contracts and 2.83% for two-year contracts.

Business message:

Customers without longer-term commitments are much more likely to leave.

### 3. Churn by Tenure Group

Recommended chart:

- Bar chart

Fields:

- X-axis: tenure_group
- Y-axis: churn rate

Key finding:

Customers with 0-12 months of tenure had the highest churn rate at 47.77%.

Business message:

Retention risk is highest early in the customer lifecycle.

### 4. Churn by Monthly Charge Group

Recommended chart:

- Bar chart

Fields:

- X-axis: monthly_charge_group
- Y-axis: churn rate

Key finding:

High monthly charge customers had the highest churn rate at 35.36%.

Business message:

Higher-paying customers are more likely to churn, creating revenue risk.

### 5. Churn by Internet Service Type

Recommended chart:

- Bar chart

Fields:

- X-axis: internet_service
- Y-axis: churn rate

Key finding:

Fiber optic customers had the highest churn rate at 41.89%.

Business message:

Fiber optic customers should be investigated for pricing, service reliability, support experience, or competitive pressure.

### 6. Churn by Payment Method

Recommended chart:

- Bar chart

Fields:

- X-axis: payment_method
- Y-axis: churn rate

Key finding:

Electronic check customers had the highest churn rate at 45.29%.

Business message:

Customers using electronic check are much more likely to churn than customers using automatic payment methods.

### 7. High-Risk Customer Segment

Recommended chart:

- Bar chart comparing High Risk vs Other Customers

High-risk definition:

Customers with all three of the following characteristics:

- Month-to-month contract
- Fiber optic internet service
- Electronic check payment method

Key finding:

The high-risk segment had a churn rate of 60.37%, compared with 18.83% for other customers.

Business message:

Churn risk compounds when multiple high-risk characteristics appear together.

### 8. Top Churn Reasons

Recommended chart:

- Horizontal bar chart

Fields:

- Y-axis: churn_reason
- X-axis: number of churned customers

Top reasons:

- Attitude of support person
- Competitor offered higher download speeds
- Competitor offered more data
- Don't know
- Competitor made better offer

Business message:

Churn appears to be driven by both customer support experience and competitive pressure.

## Recommended Filters

The dashboard should include filters for:

- Contract type
- Internet service type
- Payment method
- Tenure group
- Monthly charge group
- Churn status

These filters allow stakeholders to explore churn patterns by customer segment.

## Dashboard Layout

Recommended layout:

1. Top row:
   - KPI cards

2. Middle row:
   - Churn by Contract Type
   - Churn by Tenure Group
   - Churn by Monthly Charge Group

3. Lower row:
   - Churn by Internet Service Type
   - Churn by Payment Method
   - High-Risk Segment Churn Comparison

4. Bottom section:
   - Top Churn Reasons
   - Business recommendations text box

## Business Recommendations to Include

The dashboard should communicate the following recommendations:

1. Prioritize retention campaigns for customers in their first 12 months.
2. Encourage month-to-month customers to move into one-year or two-year contracts.
3. Investigate fiber optic customer satisfaction, pricing, reliability, and support issues.
4. Encourage electronic check customers to switch to automatic payment methods.
5. Monitor high monthly charge customers because churn in this group has larger revenue impact.
6. Target the combined high-risk segment with proactive outreach and retention offers.
7. Improve support quality because support attitude appeared as a top churn reason.
8. Monitor competitor offers related to download speed, data, and pricing.

## Planned Dashboard Tool

The dashboard can be built in either:

- Tableau
- Power BI

Preferred final portfolio output:

- Dashboard screenshots saved in `dashboard/screenshots/`
- Dashboard summary included in the README