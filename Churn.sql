create database churn_analysis;
use churn_analysis;

select * from customer_data;

-- Explore Data:
-- 1)
select Gender, count(gender) as Total_Count,
count(Gender) * 100 / (select count(*) from customer_data) as percentage 
from customer_data
group by Gender;

-- 2)
select contract, count(contract) as Total_Contract,
count(contract) * 100 / (select count(*) from customer_data) as Percentage
from customer_data
group by contract;

-- 3)
select Customer_Status, count(Customer_Status) as Total_Customers,
round(sum(Total_Revenue),2) as Revenue,
round((count(Total_Revenue) * 100 / (select count(*) from customer_data)),2) as Rev_Percentage
from customer_data
group by Customer_Status;

-- 4)
select State, count(State) as Total_Customers,
round((count(State) * 100 / (select count(*) from customer_data)), 2) as Percentage
from customer_data
group by state
order by Percentage desc;

-- 5)
select distinct(Internet_Type)
from customer_data;

-- Clean Data:
SELECT 
    SUM(CASE WHEN Customer_ID = '' THEN 1 ELSE 0 END) AS Customer_ID,
    SUM(CASE WHEN Gender = '' THEN 1 ELSE 0 END) AS Gender,
    SUM(CASE WHEN Age = '' THEN 1 ELSE 0 END) AS Age,
    SUM(CASE WHEN Married = '' THEN 1 ELSE 0 END) AS Married,
    SUM(CASE WHEN State = '' THEN 1 ELSE 0 END) AS State,
    SUM(CASE WHEN Number_of_Referrals = '' THEN 1 ELSE 0 END) AS Number_of_Referrals,
    SUM(CASE WHEN Tenure_in_Months = '' THEN 1 ELSE 0 END) AS Tenure_in_Months,
    SUM(CASE WHEN Value_Deal = '' THEN 1 ELSE 0 END) AS Value_Deal,
    SUM(CASE WHEN Phone_Service = '' THEN 1 ELSE 0 END) AS Phone_Service,
    SUM(CASE WHEN Multiple_Lines = '' THEN 1 ELSE 0 END) AS Multiple_Lines,
    SUM(CASE WHEN Internet_Service = '' THEN 1 ELSE 0 END) AS Internet_Service,
    SUM(CASE WHEN Internet_Type = '' THEN 1 ELSE 0 END) AS Internet_Type,
    SUM(CASE WHEN Online_Security = '' THEN 1 ELSE 0 END) AS Online_Security,
    SUM(CASE WHEN Online_Backup = '' THEN 1 ELSE 0 END) AS Online_Backup,
    SUM(CASE WHEN Device_Protection_Plan = '' THEN 1 ELSE 0 END) AS Device_Protection_Plan,
    SUM(CASE WHEN Premium_Support = '' THEN 1 ELSE 0 END) AS Premium_Support,
    SUM(CASE WHEN Streaming_TV = '' THEN 1 ELSE 0 END) AS Streaming_TV,
    SUM(CASE WHEN Streaming_Movies = '' THEN 1 ELSE 0 END) AS Streaming_Movies,
    SUM(CASE WHEN Streaming_Music = '' THEN 1 ELSE 0 END) AS Streaming_Music,
    SUM(CASE WHEN Unlimited_Data = '' THEN 1 ELSE 0 END) AS Unlimited_Data,
    SUM(CASE WHEN Contract = '' THEN 1 ELSE 0 END) AS Contract,
    SUM(CASE WHEN Paperless_Billing = '' THEN 1 ELSE 0 END) AS Paperless_Billing,
    SUM(CASE WHEN Payment_Method = '' THEN 1 ELSE 0 END) AS Payment_Method,
    SUM(CASE WHEN Monthly_Charge = '' THEN 1 ELSE 0 END) AS Monthly_Charge,
    SUM(CASE WHEN Total_Charges = '' THEN 1 ELSE 0 END) AS Total_Charges,
    SUM(CASE WHEN Total_Refunds = '' THEN 1 ELSE 0 END) AS Total_Refunds,
    SUM(CASE WHEN Total_Extra_Data_Charges = '' THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges,
    SUM(CASE WHEN Total_Long_Distance_Charges = '' THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges,
    SUM(CASE WHEN Total_Revenue = '' THEN 1 ELSE 0 END) AS Total_Revenue,
    SUM(CASE WHEN Customer_Status = '' THEN 1 ELSE 0 END) AS Customer_Status,
    SUM(CASE WHEN Churn_Category = '' THEN 1 ELSE 0 END) AS Churn_Category,
    SUM(CASE WHEN Churn_Reason = '' THEN 1 ELSE 0 END) AS Churn_Reason
FROM customer_data;


SELECT SUM(Value_Deal IS NULL) AS null_count
FROM customer_data;

select Number_of_referrals from customer_data
where Number_of_referrals = 0;

UPDATE customer_data
SET Value_Deal = "None" WHERE Value_Deal = '';
UPDATE customer_data
SET Multiple_Lines = "No" WHERE Multiple_Lines = '';

UPDATE customer_data
SET Internet_Type = "None" WHERE Internet_Type = '';
UPDATE customer_data
SET Online_Security = "No" WHERE Online_Security = '';

UPDATE customer_data
SET Online_Backup = "No" WHERE Online_Backup = '';
UPDATE customer_data
SET Device_Protection_Plan = "No" WHERE Device_Protection_Plan = '';
UPDATE customer_data
SET Premium_Support = "No" WHERE Premium_Support = '';
UPDATE customer_data
SET Streaming_TV = "No" WHERE Streaming_TV = '';
UPDATE customer_data
SET Streaming_Movies = "No" WHERE Streaming_Movies = '';
UPDATE customer_data
SET Streaming_Music = "No" WHERE Streaming_Music = '';
UPDATE customer_data
SET Unlimited_Data = "No" WHERE Unlimited_Data = '';
UPDATE customer_data
SET Churn_Category = "Others" WHERE Churn_Category = '';
UPDATE customer_data
SET Churn_Reason = "Others" WHERE Churn_Reason = '';

-- Views:

CREATE VIEW Churn_Data_View as 
SELECT * FROM customer_data where Customer_Status in ("Churned", "Stayed");

CREATE VIEW Join_Date_View as 
SELECT * FROM customer_data where Customer_Status = "Joined";