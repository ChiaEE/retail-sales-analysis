CREATE DATABASE retail_analytics;

USE retail_analytics;

CREATE TABLE raw_retail_sales (
    Transaction_ID INT,
    Transaction_Date DATE,
    Customer_ID VARCHAR(20),
    Gender VARCHAR(10),
    Age INT,
    Product_Category VARCHAR(30),
    Quantity INT,
    Price_Per_Unit DECIMAL(6,2),
    Total_Amount DECIMAL(8,2)
);

show tables;