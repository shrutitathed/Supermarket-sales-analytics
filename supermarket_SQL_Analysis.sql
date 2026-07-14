SELECT 
    Branch, 
    City, 
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(gross_income), 2) AS Total_Profit
FROM supermarket_sales
GROUP BY Branch, City
ORDER BY Total_Revenue DESC;

SELECT 
    Time_Slot, 
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM supermarket_sales
GROUP BY Time_Slot
ORDER BY Total_Sales DESC;

SELECT 
    Product_line, 
    SUM(Quantity) AS Total_Items_Sold,
    ROUND(AVG(Rating), 2) AS Average_Rating
FROM supermarket_sales
GROUP BY Product_line
ORDER BY Total_Items_Sold DESC;

SELECT 
    Product_line,
    Customer_type,
    ROUND(AVG(Sales), 2) AS Avg_Transaction_Amount
FROM supermarket_sales
GROUP BY Product_line, Customer_type
ORDER BY Product_line, Avg_Transaction_Amount DESC;