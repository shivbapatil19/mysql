create database info;

use info;

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  product VARCHAR(30),
  quantity INT,
  price INT
);

INSERT INTO orders VALUES
(1, 'Ravi', 'Laptop', 1, 60000),
(2, 'Sneha', 'Mobile', 2, 20000),
(3, 'Ravi', 'Tablet', 1, 25000),
(4, 'Arjun', 'Laptop', 2, 120000),
(5, 'Meera', 'Mobile', 3, 30000),
(6, 'Sneha', 'Laptop', 1, 60000),
(7, 'Ravi', 'Mobile', 2, 20000);

select * from orders;

##having clause
#1.customer having more than 2 orders
SELECT customer_name, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_name
HAVING COUNT(order_id) > 2;

#2.find product where total quantity order>3
SELECT product, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product
HAVING SUM(quantity) > 3;

#3.find product where average price above 30000
SELECT product, AVG(price) AS avg_price
FROM orders
GROUP BY product
HAVING AVG(price) > 30000;

#4.customers whose total sales amount > 100000
SELECT customer_name, SUM(quantity * price) AS total_sales
FROM orders
GROUP BY customer_name
HAVING SUM(quantity * price) > 100000;

#5.find the product where maximum product price < 60000
SELECT product, MAX(price) AS max_price
FROM orders
GROUP BY product
HAVING MAX(price) < 60000;




