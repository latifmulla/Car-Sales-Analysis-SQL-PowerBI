 CREATE DATABASE tata_harrier;
 use tata_harrier;

-- 1 Show all data 
 SELECT * 
FROM tata_harrier_sales;

-- 2 Total Units Sold
SELECT SUM(Units_Sold) AS Total_Units_Sold
FROM tata_harrier_sales;

-- 3 Total Revenue
SELECT SUM(Revenue_Lakhs) AS Total_Revenue_Lakhs
FROM tata_harrier_sales;

-- 4 Sales by Region
SELECT Region, SUM(Units_Sold) AS Total_Units
FROM tata_harrier_sales
GROUP BY Region;

-- 5 Revenue by Variant
SELECT Variant, SUM(Revenue_Lakhs) AS Total_Revenue
FROM tata_harrier_sales
GROUP BY Variant;

-- 6 Average Customer Rating
SELECT AVG(Customer_Rating) AS Avg_Rating
FROM tata_harrier_sales;

-- 7 Top 5 Best-Selling Variants
SELECT Variant, SUM(Units_Sold) AS Total_Units
FROM tata_harrier_sales
GROUP BY Variant
ORDER BY Total_Units DESC
LIMIT 5;

-- 8 Fuel Type Sales Analysis
SELECT Fuel_Type, SUM(Units_Sold) AS Total_Units
FROM tata_harrier_sales
GROUP BY Fuel_Type;

-- 9 Monthly Sales Trend
SELECT MONTH(Date) AS Month, SUM(Units_Sold) AS Total_Units
FROM tata_harrier_sales
GROUP BY MONTH(Date)
ORDER BY Month;

-- 10 Region with Highest Revenue
SELECT Region, SUM(Revenue_Lakhs) AS Total_Revenue
FROM tata_harrier_sales
GROUP BY Region
ORDER BY Total_Revenue DESC
LIMIT 1;

-- 11 Average Rating by Variant
SELECT Variant, AVG(Customer_Rating) AS Avg_Rating
FROM tata_harrier_sales
GROUP BY Variant
ORDER BY Avg_Rating DESC;

-- 12 Color-wise Sales
SELECT Color, SUM(Units_Sold) AS Total_Units
FROM tata_harrier_sales
GROUP BY Color
ORDER BY Total_Units DESC;












 