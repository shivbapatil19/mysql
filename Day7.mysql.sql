CREATE DATABASE IF NOT EXISTS sales;
USE sales;

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  product VARCHAR(50),
  category VARCHAR(30),
  quantity INT,
  price DECIMAL(10,2),
  order_date DATE
);

INSERT INTO orders VALUES
(1, 'Amit', 'Laptop', 'Electronics', 1, 60000, '2025-01-15'),
(2, 'Sneha', 'Mobile', 'Electronics', 2, 25000, '2025-01-18'),
(3, 'Raj', 'Desk Chair', 'Furniture', 1, 7000, '2025-02-02'),
(4, 'Priya', 'Table', 'Furniture', 2, 12000, '2025-02-10'),
(5, 'Arjun', 'Headphones', 'Electronics', 3, 3000, '2025-03-01'),
(6, 'Meera', 'Notebook', 'Stationery', 5, 100, '2025-03-05'),
(7, 'Vikram', 'Pen', 'Stationery', 10, 20, '2025-03-06'),
(8, 'Anita', 'Sofa', 'Furniture', 1, 25000, '2025-03-08'),
(9, 'Shiv', 'Monitor', 'Electronics', 2, 15000, '2025-03-12'),
(10, 'Kiran', 'Laptop', 'Electronics', 1, 55000, '2025-03-20');


# group by is used when we want to make group depending on the item than group by is used
#when we used the group by condition it will not repeat the lead it will show once the lead is being in row..
select category 
from orders
group by category;

#1️.Find the total quantity of items ordered in each category.
select category, sum(quantity) as total_qyality
from orders
group by category;

#2.Find the average price of products in each category.
select category, avg(price) as avg_price
from orders
group by category;

#3️.Find the highest price item in each category.
select category,max(price) as higest_price
from orders 
group by category;

#4.show the number of orders placed by each customer.
select customer_name,count(*) as total_orders
from orders
group by customer_name;

#5.show the average quantity of items ordered per customer.
select customer_name,avg(quantity) as average_quantity
from orders
group by customer_name;

#6.Show the total revenue (quantity × price) for each category.
#here it the formula for the total revenue as totaL_revenue
select category,sum(quantity*price) as total_revenue
from orders
group by category;

#7.Find the lowest priced product in each category.
select category,min(price) as lowest_price
from orders
group by category;

#8.Show the total number of items ordered for each customer, but only for those who ordered more than 5 items in total.
SELECT customer_name, SUM(quantity) AS total_items
FROM orders
GROUP BY customer_name
HAVING SUM(quantity) > 5;
