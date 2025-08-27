SELECT Category, COUNT(*) AS TotalProducts
FROM Products
GROUP BY Category;
SELECT AVG(Price) AS AvgElectronicsPrice
FROM Products
WHERE Category = 'Electronics';
SELECT *
FROM Customers
WHERE City LIKE 'L%';
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%er';
SELECT *
FROM Customers
WHERE Country LIKE '%a';
SELECT MAX(Price) AS HighestPrice
FROM Products;
SELECT Country, COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Country;
SELECT MIN(Quantity) AS MinQuantity,
       MAX(Quantity) AS MaxQuantity
FROM Orders;



SELECT DISTINCT o.CustomerID
FROM Orders o
WHERE o.OrderDate >= '2023-01-01' AND o.OrderDate < '2023-02-01'
  AND o.CustomerID NOT IN (
    SELECT DISTINCT CustomerID FROM Invoices
);
SELECT ProductName FROM Products
UNION ALL
SELECT ProductName FROM Products_Discounted;
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;
SELECT YEAR(OrderDate) AS OrderYear,
       AVG(OrderAmount) AS AvgOrderAmount
FROM Orders
GROUP BY YEAR(OrderDate);
SELECT ProductName, Price,
       CASE 
           WHEN Price < 100 THEN 'Low'
           WHEN Price BETWEEN 100 AND 500 THEN 'Mid'
           ELSE 'High'
       END AS PriceGroup
FROM Products;
SELECT *
INTO Population_Each_Year
FROM (
    SELECT City, Year, Population
    FROM City_Population
) AS SourceTable
PIVOT (
    SUM(Population)
    FOR Year IN ([2012], [2013])
) AS PivotTable;
SELECT ProductID,
       SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ProductID;
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%oo%';
SELECT *
INTO Population_Each_City
FROM (
    SELECT Year, City, Population
    FROM City_Population
) AS SourceTable
PIVOT (
    SUM(Population)
    FOR City IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;
SELECT TOP 3 CustomerID, 
       SUM(InvoiceAmount) AS TotalSpent
FROM Invoices
GROUP BY CustomerID
ORDER BY TotalSpent DESC;
SELECT City, [2012] AS Population, 2012 AS Year
FROM Population_Each_Year
UNION ALL
SELECT City, [2013], 2013
FROM Population_Each_Year;
-- Add more UNION ALL statements for more years if needed
SELECT p.ProductName,
       COUNT(s.SaleID) AS TimesSold
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
GROUP BY p.ProductName;
SELECT 'Bektemir' AS City, Year, Bektemir AS Population
FROM Population_Each_City
UNION ALL
SELECT 'Chilonzor', Year, Chilonzor
FROM Population_Each_City
UNION ALL
SELECT 'Yakkasaroy', Year, Yakkasaroy
FROM Population_Each_City;
