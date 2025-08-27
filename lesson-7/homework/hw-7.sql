SELECT MIN(Price) AS MinPrice
FROM Products;
SELECT MAX(Salary) AS MaxSalary
FROM Employees;
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
SELECT COUNT(DISTINCT Category) AS UniqueCategories
FROM Products;
SELECT SUM(SaleAmount) AS TotalSalesForProduct7
FROM Sales
WHERE ProductID = 7;
SELECT AVG(Age) AS AverageAge
FROM Employees;
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;
SELECT Category,
       MIN(Price) AS MinPrice,
       MAX(Price) AS MaxPrice
FROM Products
GROUP BY Category;
SELECT CustomerID, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID;
SELECT CustomerID, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID;
SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID
HAVING COUNT(*) > 5;


SELECT Category,
       SUM(SaleAmount) AS TotalSales,
       AVG(SaleAmount) AS AvgSales
FROM Sales
GROUP BY Category;
SELECT COUNT(*) AS HREmployeeCount
FROM Employees
WHERE Department = 'HR';
SELECT DeptID,
       MAX(Salary) AS MaxSalary,
       MIN(Salary) AS MinSalary
FROM Employees
GROUP BY DeptID;
SELECT DeptID,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DeptID;
SELECT DeptID,
       AVG(Salary) AS AvgSalary,
       COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID;
SELECT Category,
       AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 400;
SELECT YEAR(SalesDate) AS SaleYear,
       SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY YEAR(SalesDate)
ORDER BY SaleYear;
SELECT CustomerID,
       COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) >= 3;
SELECT DeptID,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DeptID
HAVING AVG(Salary) > 60000;


SELECT Category,
       AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVI
SELECT CustomerID,
       SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
HAVING SUM(SaleAmount) > 1500;
SELECT DeptID,
       SUM(Salary) AS TotalSalary,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DeptID
HAVING AVG(Salary) > 65000;
SELECT CustomerID,
       SUM(CASE WHEN Freight > 50 THEN Freight ELSE 0 END) AS TotalOver50,
       MIN(Freight) AS LeastPurchase
FROM TSQL2012.Sales.Orders
GROUP BY CustomerID;
SELECT 
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    SUM(SaleAmount) AS TotalSales,
    COUNT(DISTINCT ProductID) AS UniqueProductsSold
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(DISTINCT ProductID) >= 2;
SELECT 
    YEAR(OrderDate) AS OrderYear,
    MIN(Quantity) AS MinQty,
    MAX(Quantity) AS MaxQty
FROM Orders
GROUP BY YEAR(OrderDate);
