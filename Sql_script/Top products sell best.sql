SELECT 
    Product, 
    SUM(Quantity) AS Total_Units_Sold,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Product
ORDER BY Total_Units_Sold DESC;