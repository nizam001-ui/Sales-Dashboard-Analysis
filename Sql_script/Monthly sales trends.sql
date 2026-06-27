SELECT 
    DATE_FORMAT(Date, '%Y-%m-01') AS Sale_Month,
    SUM(Revenue) AS Monthly_Revenue
FROM sales_data
GROUP BY Sale_Month
ORDER BY Sale_Month ASC;
