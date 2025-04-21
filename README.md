# Churn_Analysis

### Table of Contents:
- [Project Overview](#project-overview)
- [Business Objective](#business-objective)
- [Data Source](#data-source)
- [Tools Used](#tools-used)
- [Data Understanding](#data-understanding)
- [KPIs](#kpis)
- [Data Cleaning](#data-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis-using-mysql)
- [Power BI Optimization](#power-bi-optimization)
- [Data Analysis (Power BI Visuals)](#data-analysis-power-bi-visuals)
- [Project Insights](#project-insights)
- [Recommendations](#recommendations)
- [How to Use This Report](#how-to-use-this-report)
- [Contact](#contact)

### Project Overview:
This project aims to identify customer churn patterns using SQL for data exploration and Power BI for interactive dashboards. The insights help understand why customers leave and how to retain them effectively.

### Business Objective:
Customer churn is a major issue for service-based companies. Understanding churn drivers can improve customer retention and profitability. The goal is to explore customer behavior, identify churn trends, and provide actionable insights to reduce churn.

### Data Source:
  - Churn Analysis [Download here](https://github.com/user-attachments/files/19837701/Customer_Data.csv)

### Tools Used:
  - SQL (MySQL): Data Cleaning and Exploratory Data Analysis (EDA)
  - Power BI: Data visualization and interactive dashboard

### Data Understanding
The dataset includes:
  - Demographics: Gender, Age, State, Tenure
  - Services: 11 different services offered (e.g., Internet, Phone, Streaming, etc.)
  - Contract & Payment Info: Contract, Payment method
  - Churn Status: Whether the customer has churned or not
  - Churn Reason: Reason for customer exit

### KPIs:
  1. Total Customers, Churn Rate (%), Total Churned Customers and New Joiners
  2. Churn Rate by Gender
  3. Churn Rate by Age Group
  4. Total Customers and Churn Rate by Tenure Group
  5. Churn Rate by Contract Type
  6. Churn Rate by Payment Method
  7. Top 5 State by Total Churn
  8. Total Churn by Reason Category
  9. Churn Status by Number of Services Subscribed
  10. Interactive Dashboard [View Dashboard](https://github.com/user-attachments/assets/042389db-587c-41d0-8d4a-bc333c2b0038)

### Data Cleaning:
Performed in SQL:
  - Handled null values by replacing them with empty string "".
  - For service columns (Device Protection Plan, Internet Service, Multiple Lines, Online Backup, Online Security, Phone Service, Premium Support, Streaming TV, Streaming Movies, Streaming Music, Unlimited Data) replaced nulls with "No" to indicate non-subscription.
  - Created SQL views to separate churn/stay customers and new joiners.
Final clean data exported to Power BI for analysis.

### Exploratory Data Analysis (Using MySQL):
Used MySQL queries to:
  - Analyzed gender distribution to understand customer demographics.
  - Evaluated contract type distribution and its share across customers.
  - Segmented customers by status (Churned, Stayed, Joined) and calculated associated revenue contribution.
  - Identified top states by customer count and their percentage share.
  - Explored available Internet types used by customers for service segmentation.

### Power BI Optimization:
To improve the performance and efficiency of my Power BI report, I applied the following best practices:
  1. **Used a star schema:** Structured the data model with fact and dimension tables instead of flat tables to reduce redundancy and optimize query performance.
  2. **Removed unnecessary columns and rows:** Imported only the required columns and filtered out irrelevant rows to minimize memory usage and improve refresh speed.
  3. **Turned off Auto Date/Time:** Disabled the Auto Date/Time feature to prevent Power BI from creating unnecessary hidden date tables that impact performance.
  4. **Optimized DAX by using measures:** Replaced calculated columns with DAX measures wherever possible to improve calculation performance and reduce memory load.

### Data Analysis (Power BI Visuals):
  - Overview Cards: Show Total Customers, Churn Rate %, Total Churn, and New Joiners.
  - Customer Segmentation: Gender distribution (Donut), Tenure & Age Groups vs Churn Rate (Line + Bar).
  - Geographic & Contract Analysis: Churn Rate by Top States and Contract Types.
  - Service & Payment Insights: Service usage matrix, Churn Rate by Payment Methods.
  - Churn Reasons: Total Churn by Category with tooltip page for detailed reasons.

Snap of Churn Analysis Dashboard

![Image](https://github.com/user-attachments/assets/042389db-587c-41d0-8d4a-bc333c2b0038)

### Project Insights:
  - Month-to-month contracts have the highest churn rate (~88%).
  - Customers aged above 50 contribute to ~50% of total churn.
  - Bank withdrawals lead to >70% churn among payment methods.
  - Competitor-related reasons account for over 40% of churn.
  - Combined 6–12 months and >24 months tenure groups contribute to over 50% of churn.

### Recommendations:
  - Promote long-term contracts with incentives to reduce churn from high-risk month-to-month users.
  - Engage senior customers (50+) through personalized support, loyalty benefits, or ease-of-use enhancements.
  - Encourage alternate payment methods (e.g., credit card, auto-pay) over bank withdrawals to reduce churn risk.
  - Address competitive threats by analyzing competitor offerings and improving value propositions or pricing.
  - Focus retention efforts on customers in the 6–12 months and >24 months tenure groups with proactive communication and offers.

### How to Use This Report:
  - Cards provide a quick snapshot of Total Customers, Churn Rate %, Total Churn, and New Joiners.
  - Use the slicers for:
      - Revenue Category – to filter insights based on customer revenue segments.
      - Monthly Charge Range – to explore churn trends across different billing tiers.
  - Donut & Matrix visuals help analyze gender distribution and service usage patterns.
  - Bar & Line Charts reveal churn behavior by Tenure, Age Group, Contract Type, State, and Payment Method.
  - Tooltip page on churn reasons offers deeper insights into customer dissatisfaction causes.

### Contact:
For further information or inquiries regarding this project, feel free to reach out:
  - Email     : pauljohnson2094@gmail.com
  - LinkedIn  : www.linkedin.com/in/pauljohnson2094
  - GitHub    : https://github.com/pauljohnson20
