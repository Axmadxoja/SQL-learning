BULK INSERT Employees
FROM 'C:\Data\employees.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
CSV (Comma-Separated Values) — eng keng tarqalgan matnli format, ustunlar vergul bilan ajratilgan.

TXT (Plain Text) — oddiy matn fayli, ustunlar va qatorlar turli ajratuvchilar bilan bo‘lingan bo‘lishi mumkin (masalan, tab, vergul).

Excel (XLS, XLSX) — Microsoft Excel fayllari, jadval va formatlangan ma’lumotlarni o‘z ichiga oladi.

XML (Extensible Markup Language) — strukturalangan ma’lumotlarni saqlash uchun ishlatiladi, ko‘p hollarda ma’lumot almashish uchun qulay.

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);




CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);


INSERT INTO Products (ProductID, ProductName, Price)
VALUES
    (1, 'Laptop', 1500.00),
    (2, 'Smartphone', 800.00),
    (3, 'Tablet', 300.00);

ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);




-- Bu so'rov Products jadvaliga yangi yozuv qo'shadi
INSERT INTO Products (ProductID, ProductName, Price)
VALUES (4, 'Monitor', 200.00);


ALTER TABLE Products
ADD CategoryID INT;


CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);


BULK INSERT Products
FROM 'C:\Path\To\Your\File.txt'
WITH (
    FIELDTERMINATOR = ',',  -- ustunlar ajratuvchisi (masalan, vergul)
    ROWTERMINATOR = '\n',   -- qator ajratuvchisi (yangi qator)
    FIRSTROW = 2            -- agar faylda sarlavha bo‘lsa, undan keyingi qatordan o‘qish
);


ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);


ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive
CHECK (Price > 0);


SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price, Stock
FROM Products;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    CONSTRAINT CHK_Age CHECK (Age >= 18)
);


CREATE TABLE SampleTable (
    ID INT IDENTITY(100,10) PRIMARY KEY,
    Description VARCHAR(100)
);


CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);


SELECT ISNULL(Price, 0) FROM Products;


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Salary DECIMAL(10,2)
);


ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;


