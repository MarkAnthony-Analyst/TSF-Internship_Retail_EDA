--EDA Sample_Superstore 


SELECT * FROM dbo.SampleSuperstore

--Top 10 Profitable State
SELECT TOP 10 State, ROUND(SUM(Profit),2) 'Total Profit'
FROM dbo.SampleSuperstore
GROUP BY State
ORDER BY 2 DESC;

--Top 10 State by Total_Sales
SELECT TOP 10 State, ROUND(SUM(Sales),2) 'Total Sales'
FROM dbo.SampleSuperstore
GROUP BY State
ORDER BY 2 DESC;

--Subcategory Profit
--Supplies, Bookcases and tables has negative profit
SELECT SubCategory, ROUND(SUM(Profit),2) 'Total Profit'
FROM dbo.SampleSuperstore
GROUP BY SubCategory
ORDER BY 2 DESC;

--Which Category is the most profitable?
--Technology is trending so it's obvious that it has the highest sales and profit
SELECT Category, ROUND(SUM(Profit),2) 'Total Profit'
FROM dbo.SampleSuperstore
GROUP BY Category
ORDER BY 2 DESC;

-- Total_Discount by State
SELECT Distinct State, ROUND(SUM(Discount),2) AS Total_Discount
FROM  dbo.SampleSuperstore
GROUP BY State 
ORDER BY 2 DESC;

--FInding the relation of discount to profit and sales
SELECT State, 
			ROUND(SUM(Sales),2) AS Total_sales, 
			ROUND(SUM(Profit),2) AS Total_Profit,
			ROUND(SUM(Discount),2) AS Total_Discount
FROM  dbo.SampleSuperstore
GROUP BY State 
ORDER BY 2 DESC;

--State that has negative profit
SELECT TOP 10 State, 
			ROUND(SUM(Sales),2) AS Total_sales, 
			ROUND(SUM(Profit),2) AS Total_Profit,
			ROUND(SUM(Discount),2) AS Total_Discount
FROM  dbo.SampleSuperstore
GROUP BY State 
ORDER BY 3 ;