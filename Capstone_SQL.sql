use capstone;
Select * from [Western Countries];

SELECT Country, Product, Sales FROM [Western Countries];

SELECT Country, SUM(Sales) AS Total_Sales
FROM [Western Countries]
GROUP BY Country;

SELECT Product, SUM(Profit) AS Total_Profit
FROM [Western Countries]
GROUP BY Product;

SELECT Segment, AVG(Sales) AS Average_Sale_Price
FROM [Western Countries]
GROUP BY Segment;

SELECT Country, SUM(Gross_Sales) AS Total_Gross_Sales
FROM [Western Countries]
GROUP BY Country
ORDER BY Total_Gross_Sales DESC;

SELECT Product, Avg(Discounts) AS Total_Discounts
FROM [Western Countries]
GROUP BY Product;

SELECT Segment, SUM(Sales) AS Total_Sales, avg(Profit) AS Total_Profit
FROM [Western Countries]
GROUP BY Segment;

SELECT Country, Product, SUM(COGS) AS Total_COGS
FROM [Western Countries]
GROUP BY Country, Product;

SELECT Country, Product, SUM(COGS) AS Total_COGS
FROM [Western Countries]
GROUP BY Country, Product;

SELECT Product, (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM [Western Countries]
GROUP BY Product
ORDER BY Profit_Margin DESC;

SELECT Year, SUM(Sales) OVER (ORDER BY Year) AS Running_Total_Sales
FROM [Western Countries];

SELECT Country, SUM(Sales) AS Total_Sales,
       RANK() OVER (ORDER BY SUM(Sales) DESC) AS Sales_Rank
FROM [Western Countries]
GROUP BY Country;

SELECT Month_Name, Year, SUM(Sales) AS Total_Sales
FROM [Western Countries]
GROUP BY Month_Name, Year
ORDER BY Year, Month_Name;


SELECT Segment, Month_Name, Year, SUM(Profit) AS Monthly_Profit
FROM [Western Countries]
GROUP BY Segment, Month_Name, Year
ORDER BY Segment, Year, Month_Name;






























