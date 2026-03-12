USE retail_analytics;

-- REVENUE OVERVIEW --
SELECT * from raw_retail_sales;

-- What is the total revenue? --
SELECT SUM(Total_Amount) FROM raw_retail_sales;

-- What is the average transaction value? --
SELECT AVG(Price_Per_Unit) FROM raw_retail_sales;

-- What is the largest single transaction?
SELECT MAX(Total_Amount) FROM raw_retail_sales;

-- What is the smallest single transaction?
SELECT MIN(Total_Amount) FROM raw_retail_sales;


-- PRODUCT ANALYSIS --

-- Revenue by product category --
SELECT Product_Category, SUM(Total_Amount) AS Revenue
FROM raw_retail_sales
GROUP BY Product_Category;

-- Total quantity sold per category --
SELECT Product_Category, SUM(Quantity) AS Total_Quantity
FROM raw_retail_sales
GROUP BY Product_Category 
ORDER BY Product_Category DESC; 

-- Which category sold the most units? --
SELECT Product_Category, SUM(Price_Per_Unit) AS Total_Units
FROM raw_retail_sales
GROUP BY Product_Category 
ORDER BY Total_Units DESC; 

-- CUSTOMER DEMOGRAPHICS --
-- Average age of customers --
SELECT AVG(Age) FROM raw_retail_sales;

-- Which Gender (between Male & Female) made the most transactions?
SELECT Gender, COUNT(Transaction_ID) AS Transaction_Count
FROM raw_retail_sales
GROUP BY Gender
ORDER BY Transaction_Count;

-- Revenue grouped by gender --
SELECT Gender, SUM(Total_Amount) AS Revenue
FROM raw_retail_sales
GROUP BY Gender
ORDER BY Revenue DESC; 

-- Revenue grouped by age --
SELECT Age, SUM(Total_Amount) AS Revenue
FROM raw_retail_sales
GROUP BY Age
ORDER BY Revenue DESC;

-- TIME BASED ANALYSIS --

-- Revenue by Month --
SELECT MONTH(Transaction_Date) AS Month_Number, SUM(Total_Amount) AS Revenue
FROM raw_retail_sales
GROUP BY Month_Number
ORDER BY Month_Number ASC;

-- Number of Transactions by Month --
SELECT MONTH(Transaction_Date) AS Month_Number, COUNT(Transaction_ID) AS Transactions
FROM raw_retail_sales
GROUP BY Month_Number
ORDER BY Month_Number ASC;

-- Which month had the highest revenue? --
SELECT MONTH(Transaction_Date) AS Month_Number, SUM(Total_Amount) AS Revenue
FROM raw_retail_sales
GROUP BY Month_Number
ORDER BY Revenue DESC;



