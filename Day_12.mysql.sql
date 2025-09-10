
CREATE DATABASE shopdbbn;


USE shopdbbn;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(30)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Amount DECIMAL(10,2)
);

-- Insert Customers
INSERT INTO Customers VALUES
(1, 'Amit', 'Pune'),
(2, 'Neha', 'Mumbai'),
(3, 'Rahul', 'Delhi'),
(4, 'Priya', 'Bangalore');

-- Insert Orders
INSERT INTO Orders VALUES
(101, 1, 'Laptop', 50000),
(102, 2, 'Mobile', 20000),
(103, 1, 'Tablet', 15000),
(104, 3, 'Headphones', 3000);


#Q1. Show all customers and their orders (if any).
SELECT c.CustomerName, o.Product, o.Amount
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

#Q2. Find customers who did not place any order.
SELECT c.CustomerName, c.City
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

#3. Find customers who did not place any order.
SELECT c.CustomerName, c.City
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

#Q4. Show each customer with their total spending (include those with 0 spending).
SELECT c.CustomerName, COALESCE(SUM(o.Amount),0) AS TotalSpent
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

#Q5. Show customers and mark whether they placed an order or not.
SELECT c.CustomerName,
       CASE WHEN o.OrderID IS NULL THEN 'No Orders' ELSE 'Has Orders' END AS OrderStatus
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName, o.OrderID;

