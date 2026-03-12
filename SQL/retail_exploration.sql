USE retail_analytics;

-- What Is The earliest transaction Date? --
SELECT MIN(Transaction_Date) FROM raw_retail_sales;

-- What is the latest transaction Date? --
SELECT MAX(Transaction_Date) FROM raw_retail_sales;

-- How many unique customers exist? --
SELECT COUNT(DISTINCT Customer_ID) FROM raw_retail_sales;

-- How many unique product categories are there? --
SELECT COUNT(DISTINCT Product_Category) from raw_retail_sales;

-- What is the minimum and maximum age? --
SELECT MIN(Age) FROM raw_retail_sales;
SELECT MAX(Age) FROM raw_retail_sales;
