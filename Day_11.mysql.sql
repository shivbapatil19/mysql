
CREATE DATABASE EcommerceDB;
USE EcommerceDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


INSERT INTO Customers (customer_id, name, city) VALUES
(101, 'Anil', 'Pune'),
(102, 'Meera', 'Mumbai'),
(103, 'Kiran', 'Delhi'),
(104, 'Sita', 'Bangalore');


INSERT INTO Orders (order_id, customer_id, product, amount) VALUES
(201, 101, 'Laptop', 55000),
(202, 101, 'Mouse', 500),
(203, 103, 'Mobile', 20000),
(204, 104, 'Headphones', 1500);

-- INNER JOIN Practice Queries


-- Q1: Show all customers with the products they ordered
SELECT c.name, c.city, o.product, o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- Q2: Find customers who spent more than 10,000 on a single order
SELECT c.name, o.product, o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.amount > 10000;

-- Q3: List the names of customers and the total amount they have spent
SELECT c.name, SUM(o.amount) AS total_spent
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Q4: Show customers from “Pune” and their orders
SELECT c.name, c.city, o.product, o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
WHERE c.city = 'Pune';

-- Q5: Find customers who purchased more than one product
SELECT c.name, COUNT(o.order_id) AS num_orders
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;
