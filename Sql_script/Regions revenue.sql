SELECT 
    Region, 
    SUM(Revenue) AS Total_Revenue,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_data
GROUP BY Region
ORDER BY Total_Revenue DESC;