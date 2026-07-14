# Supermarket Sales Performance Analytics

## 🎯 Project Overview
This project focuses on analyzing historical supermarket sales data to discover hidden business trends, peak traffic hours, and the most profitable product lines. It serves as an end-to-end data analytics solution designed from a Business Analyst perspective.

## 📁 Dataset Source
The raw data used for this project was sourced from Kaggle

## 🛠️ Tech Stack & Tools Used
- **Python (Jupyter Notebook):** Data Cleaning, handling missing values, and column standardization using `pandas`.
- **SQL (SQLite / VS Code):** Structured querying (`GROUP BY`, `SUM`, `ROUND`) to extract core business metrics.
- **Power BI:** Interactive data visualization, KPI metrics tracking, and dashboard design.

## 📊 Dashboard Preview
Aqui you can see the final interactive dashboard:
<img width="1487" height="857" alt="Screenshot 2026-07-14 132841" src="https://github.com/user-attachments/assets/1a7f5c83-61ec-4154-b02a-2d52d2556f2d" />

---

## 💻 SQL Queries & Business Questions Performed

Here are the specific business questions answered using SQL queries on the database:
```sql
### 1. Branch and City Performance (Highest Revenue & Profit)
SELECT 
    Branch,
    City,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(gross_income), 2) AS Total_Profit
FROM supermarket_sales
GROUP BY Branch, City
ORDER BY Total_Revenue DESC;

### 2. Sales Trends by Time Slot (Identifying Peak Hours)
SELECT 
    Time_Slot,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM supermarket_sales
GROUP BY Time_Slot
ORDER BY Total_Sales DESC;

### 3. Product Line and Customer Rating Performance
SELECT 
    Product_line,
    SUM(Quantity) AS Total_Items_Sold,
    ROUND(AVG(Rating), 2) AS Average_Rating
FROM supermarket_sales
GROUP BY Product_line
ORDER BY Total_Items_Sold DESC;

### 4. Segment Analysis by Customer Type
SELECT 
    Product_line,
    Customer_type,
    ROUND(AVG(Sales), 2) AS Avg_Transaction_Amount
FROM supermarket_sales
GROUP BY Product_line, Customer_type;
```
## Key Insights from Dashboard
1. Top Performing Branch: Giza (Naypyitaw) leads in both revenue and profit generation, achieving a total business of $111K.  
2. Peak Sales Hours: Afternoon is the busiest time slot for the supermarket, driving the highest transaction count (454) and sales ($148K).  
3. Product & Customer Satisfaction: Chemical/Electronic accessories sold the highest volume (971 units), while 'Food and beverages' achieved the highest customer rating (7.11/10).
4. Overall Revenue: Total sales generated across all branches stand at an impressive $322.97K.  
