
create database superstore_db;
use superstore_db

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Global_Superstore';

select count(*) from Global_Superstore


-- top 10 rows view
SELECT TOP 10 *
FROM [Global_Superstore];

-- total number of orders
SELECT COUNT(*) AS Total_Orders
FROM [Global_Superstore];

--check total sales and profit
SELECT
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM Global_Superstore;

-- sales by category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM [Global_Superstore]
GROUP BY Category
ORDER BY Total_Sales DESC;

-- profit by category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM [Global_Superstore]
GROUP BY Category
ORDER BY Total_Profit DESC;

-- top 10 profit by sub cateogry
SELECT TOP 10
    [Sub_Category],
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM [Global_Superstore]
GROUP BY [Sub_Category]
ORDER BY Total_Profit DESC;


-- profit / loss / break even orders

SELECT
    CASE
        WHEN Profit > 0 THEN 'Profit'
        WHEN Profit < 0 THEN 'Loss'
        ELSE 'Break Even'
    END AS Order_Status,
    COUNT(*) AS Orders
FROM [Global_Superstore]
GROUP BY
    CASE
        WHEN Profit > 0 THEN 'Profit'
        WHEN Profit < 0 THEN 'Loss'
        ELSE 'Break Even'
    END


-- top 10 customers by rank

WITH CustomerSales AS
(
    SELECT
        Customer_Name,
        ROUND(SUM(Sales), 2) AS Total_Sales,
        RANK() OVER (
            ORDER BY SUM(Sales) DESC
        ) AS Sales_Rank
    FROM [Global_Superstore]
    GROUP BY Customer_Name
)

SELECT *
FROM CustomerSales
WHERE Sales_Rank <= 10;

-- rank customers by countries

SELECT
    Country,
    Customer_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    RANK() OVER (
        PARTITION BY Country
        ORDER BY SUM(Sales) DESC
    ) AS Country_Rank
FROM [Global_Superstore]
GROUP BY
    Country,
    Customer_Name;