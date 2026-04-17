CREATE DATABASE grind_sales;

USE grind_sales;

SHOW TABLES;

SELECT * FROM orders_2023;
SELECT * FROM orders_2024;
SELECT * FROM orders_2025;
SELECT * FROM customers;
SELECT * FROM products;

-- Creating VIEW
CREATE VIEW combined_orders AS
SELECT
	OrderID, CustomerID, ProductID, OrderDate, Quantity, Revenue, COGS
FROM orders_2023

UNION ALL

SELECT
	OrderID, CustomerID, ProductID, OrderDate, Quantity, Revenue, COGS
FROM orders_2024

UNION ALL

SELECT
	OrderID, CustomerID, ProductID, OrderDate, Quantity, Revenue, COGS
FROM orders_2025;

----------------- Ad-HOC Analysis ----------------
-- Total Revenue
SELECT ROUND(SUM(Revenue),2) AS Total_Revenue
FROM combined_orders
ORDER BY Total_Revenue DESC;

-- Total Quantity
SELECT SUM(Quantity) AS Total_Quantity
FROM combined_orders
ORDER BY Total_Quantity DESC;

-- Total COGS 
SELECT ROUND(SUM(COGS),2) AS Total_COGS
FROM combined_orders
ORDER BY Total_COGS DESC;

-- Total Orders
SELECT COUNT(*) AS Total_Orders
FROM combined_orders;


-- Building main dataset
WITH all_orders AS(
SELECT
	OrderID, CustomerID, ProductID, OrderDate, Quantity, Revenue, COGS
FROM orders_2023
UNION ALL
SELECT
	OrderID, CustomerID, ProductID, OrderDate, Quantity, Revenue, COGS
FROM orders_2024
UNION ALL
SELECT
	OrderID, CustomerID, ProductID, OrderDate, Quantity, Revenue, COGS
FROM orders_2025)

SELECT 
	a.OrderID,
    a.CustomerID,
	c.Region,
    a.OrderDate,
	c.CustomerJoinDate,
    a.ProductID,
	p.ProductName,
    p.ProductCategory,
    a.Quantity,
	p.Base_Cost,
	p.Price,
    a.Revenue,
    a.COGS
FROM all_orders a
LEFT JOIN customers c
ON a.CustomerID = c.CustomerID
LEFT JOIN products p
ON a.productID = p.productID;


DROP VIEW final_dataset;

-- Creating Final Data Set
CREATE VIEW final_dataset AS
SELECT 
	co.OrderID,
    co.CustomerID,
	c.Region,
    co.OrderDate,
	c.CustomerJoinDate,
    co.ProductID,
	p.ProductName,
    p.ProductCategory,
    co.Quantity,
	p.Base_Cost,
	p.Price,
    co.Revenue,
    CASE
		WHEN co.Revenue = 0 THEN co.Quantity * p.Price
        ELSE co.Revenue END AS CleanedRevenue,
    co.COGS,
    CASE
		WHEN co.Revenue = 0 THEN (co.Quantity * p.price) - co.COGS
        ELSE co.Revenue - co.COGS END AS Profit
FROM combined_orders co
LEFT JOIN customers c
ON co.CustomerID = c.CustomerID
LEFT JOIN products p
ON co.productID = p.productID
WHERE co.CustomerID IS NOT NULL;   -- Dropping Non-CustomerID'S

SELECT * FROM final_dataset;













WHERE c.CustomerID IS NOT NULL;







 
	




