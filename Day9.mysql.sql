create database iinfo;

use iinfo;

create table orderss(
 OrderID INT PRIMARY KEY,
    Customer VARCHAR(50),
    Product VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2));

insert into orderss(OrderID, Customer, Product, Quantity, Price)
values
(1, 'Alice', 'Laptop', 1, 800),
(2, 'Bob', 'Mobile', 2, 300),
(3, 'Alice', 'Tablet', 3, 200),
(4, 'David', 'Laptop', 2, 800),
(5, 'Bob', 'Tablet', 4, 200),
(6, 'Charlie', 'Mobile', 1, 300),
(7, 'Alice', 'Mobile', 2, 300),
(8, 'David', 'Tablet', 5, 200),
(9, 'Charlie', 'Laptop', 1, 800),
(10, 'Bob', 'Laptop', 3, 800);

select * from orderss;

#again about the having clause 
#1.Find customers whose total purchase amount is more than 2000.
select customer,sum(price*quantity)>2000
from orderss
group by customer
having sum(price*quantity)>2000;

#2.Find customers who bought more than 5 products in total.
SELECT Customer, SUM(Quantity) AS TotalProducts
FROM Orderss
GROUP BY Customer
HAVING SUM(Quantity) > 5;

#3.Show products whose average selling price is greater than 500.
select product,avg(price) as average_price
from orderss
group by product
having avg(price) > 500;

#4.Show customers who ordered at least 2 different product types.
SELECT Customer, COUNT(DISTINCT Product) AS ProductTypes
FROM Orderss
GROUP BY Customer
HAVING COUNT(DISTINCT Product) >= 2;

#5.Find customers whose maximum single order quantity is greater than 3.
select customer,max(quantity) as maxorderquantity
from orders
group by customer
having max(quantity) > 3;

#6.Show customers who spent less than 1000 in total
SELECT Customer, SUM(Quantity * Price) AS TotalSpent
FROM Orderss
GROUP BY Customer
HAVING SUM(Quantity * Price) < 1000;

#7.Find products that were ordered by at least 2 different customers.
SELECT Product, COUNT(DISTINCT Customer) AS CustomerCount
FROM Orders
GROUP BY Product
HAVING COUNT(DISTINCT Customer) >= 2;
