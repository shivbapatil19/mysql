

CREATE DATABASE ShoppingDB;

USE ShoppingDB;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1,'Rahul','Pune'),
(2,'Priya','Mumbai'),
(3,'Amit','Delhi'),
(4,'Sneha','Nagpur'),
(5,'Rohan','Pune'),
(6,'Neha','Bangalore');



CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Amount INT
);

INSERT INTO Orders VALUES
(101,1,'Mobile',25000),
(102,1,'Earbuds',3000),
(103,2,'Laptop',65000),
(104,3,'Keyboard',2000),
(105,5,'Monitor',12000),
(106,7,'Smart Watch',8000);


-- SQL JOINS PRACTICE
-- Database : ShoppingDB
 


-- Question 1
-- INNER JOIN
-- Display CustomerName, Product and Amount
-- Show only customers who have placed orders.


SELECT CustomerName, Product, Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- Question 2
-- LEFT JOIN
-- Display CustomerName and Product.
-- Show all customers even if they have not placed any order.


SELECT CustomerName, Product
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- Question 3
-- RIGHT JOIN
-- Display CustomerName and Product.
-- Show all orders even if there is no matching customer.


SELECT CustomerName, Product
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



-- Question 4
-- FULL OUTER JOIN
-- Display CustomerName and Product.
-- Show all customers and all orders.
-- (MySQL does not support FULL OUTER JOIN directly.)


SELECT CustomerName, Product
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT CustomerName, Product
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


--------------------------------------------------------
-- Create Employees Table
--------------------------------------------------------

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees VALUES
(1,'Rahul',NULL),
(2,'Priya',1),
(3,'Amit',1),
(4,'Sneha',2),
(5,'Rohan',2);



-- Question 5
-- SELF JOIN
-- Display Employee Name and Manager Name.


SELECT
    E.EmployeeName AS Employee,
    M.EmployeeName AS Manager
FROM Employees E
LEFT JOIN Employees M
ON E.ManagerID = M.EmployeeID;