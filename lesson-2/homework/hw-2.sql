CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);

Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).

UPDATE Employees
SET Salary = 7000
WHERE EmpID = 1;

DELETE FROM Employees
WHERE EmpID = 2;

DELETE FROM Employees WHERE EmpID = 2;

ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);

UPDATE Employees
SET Department = 'IT'
WHERE EmpID = 1;

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;


Intermediate

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

UAdvanced-Level TasksPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

TRUNCATE TABLE Employees;

ALTER TABLE Employees
DROP COLUMN Department;


Advanced-Level Tasks (9)

Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive
CHECK (Price > 0);

ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

CREATE TABLE Inventory_New (
    ProductCode INT IDENTITY(1000,5) PRIMARY KEY,
    -- boshqa ustunlar (Inventory jadvalidagi ustunlarni shu yerga yozing)
    -- masalan:
    ProductName VARCHAR(100),
    Quantity INT
);

