# 🚗 Tata Harrier Sales Analysis Project (SQL + Power BI)

## 📌 Project Overview
This project analyzes Tata Harrier sales data using **SQL, Excel, and Power BI**.  
The goal is to understand sales performance, revenue trends, customer preferences, and regional demand.

---

## 🛠 Tools Used
- **SQL (MySQL)** – Data cleaning and analysis queries  
- **Microsoft Excel** – Data preprocessing  
- **Power BI** – Interactive dashboard visualization  
- **GitHub** – Project documentation and version control  

---

## 📂 Dataset Information
The dataset contains Tata Harrier sales records with the following columns:

- Date  
- Model  
- Variant  
- Fuel_Type  
- Transmission  
- Color  
- City  
- State  
- Price  
- Quantity_Sold  
- Revenue  

---

## 📊 SQL Analysis Questions
1. Total sales by model  
2. Total revenue by city  
3. Monthly sales trend  
4. Top 5 selling cities  
5. Fuel type wise sales  
6. Transmission wise revenue  
7. Average price by variant  
8. Highest selling state  
9. Yearly sales growth  
10. Customer demand by color  
11. Total quantity sold  
12. Revenue contribution by region  

---

## 💻 Sample SQL Queries

```sql
-- Total Sales
SELECT SUM(Quantity_Sold) AS Total_Sales FROM tata_harrier_sales;

-- Revenue by City
SELECT City, SUM(Revenue) AS Total_Revenue
FROM tata_harrier_sales
GROUP BY City
ORDER BY Total_Revenue DESC;

-- Monthly Sales Trend
SELECT MONTH(Date) AS Month, SUM(Quantity_Sold) AS Sales
FROM tata_harrier_sales
GROUP BY Month;
