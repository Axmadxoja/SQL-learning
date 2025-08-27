SELECT p.ProductName, s.SupplierName
FROM Products p
CROSS JOIN Suppliers s;
SELECT d.DepartmentName, e.EmployeeName
FROM Departments d
CROSS JOIN Employees e;
SELECT s.SupplierName, p.ProductName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;
SELECT c.CustomerName, o.OrderID
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;
SELECT s.StudentName, c.CourseName
FROM Students s
CROSS JOIN Courses c;
SELECT p.ProductName, o.OrderID
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID;
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
SELECT s.StudentName, e.CourseID
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID;
SELECT o.OrderID, p.PaymentID
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID;
SELECT o.OrderID, p.ProductName, p.Price
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE p.Price > 100;



SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
CROSS JOIN Departments d
WHERE e.DepartmentID <> d.DepartmentID;
SELECT o.OrderID, p.ProductName, o.Quantity, p.Stock
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.Quantity > p.Stock;
SELECT c.CustomerName, s.ProductID, s.SaleAmount
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
WHERE s.SaleAmount >= 500;
SELECT s.StudentName, c.CourseName
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;
SELECT p.ProductName, s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.SupplierName LIKE '%Tech%';
SELECT o.OrderID, o.TotalAmount, p.PaymentAmount
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentAmount < o.TotalAmount;
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
SELECT p.ProductName, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Electronics', 'Furniture');
SELECT s.*
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
WHERE c.Country = 'USA';
SELECT o.OrderID, c.CustomerName, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Germany' AND o.TotalAmount > 100;
SELECT e1.EmployeeName AS Employee1,
       e2.EmployeeName AS Employee2
FROM Employees e1
JOIN Employees e2 ON e1.EmployeeID <> e2.EmployeeID
WHERE e1.DepartmentID <> e2.DepartmentID;
  SELECT p.PaymentID, o.OrderID, o.Quantity, pr.Price, p.PaymentAmount
FROM Payments p
JOIN Orders o ON p.OrderID = o.OrderID
JOIN Products pr ON o.ProductID = pr.ProductID
WHERE p.PaymentAmount <> (o.Quantity * pr.Price);
SELECT s.StudentID, s.StudentName
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.CourseID IS NULL;
SELECT m.EmployeeName AS ManagerName, e.EmployeeName AS EmployeeName,
       m.Salary AS ManagerSalary, e.Salary AS EmployeeSalary
FROM Employees e
JOIN Employees m ON e.ManagerID = m.EmployeeID
WHERE m.Salary <= e.Salary;
SELECT DISTINCT c.CustomerID, c.CustomerName, o.OrderID
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
LEFT JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentID IS NULL;
