
CREATE DATABASE shopdbb;


USE shopdbb;


CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50)
);


INSERT INTO customers VALUES
(1, 'Ravi'),
(2, 'Sneha'),
(3, 'Arjun'),
(4, 'Meera');

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product VARCHAR(30),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(101, 1, 'Laptop'),
(102, 1, 'Tablet'),
(103, 2, 'Mobile'),
(104, 4, 'Laptop'),
(105, 4, 'Mobile');

#INNER JOIN
SELECT c.customer_name, o.product
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

#LEFT JOIN
SELECT c.customer_name, o.product
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

#RIGHT JOIN
SELECT c.customer_name, o.product
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;


#FULL OUTER JOIN
SELECT c.customer_name, o.product
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id

UNION

SELECT c.customer_name, o.product
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

#CROSS JOIN
SELECT c.customer_name, o.product
FROM customers c
CROSS JOIN orders o;



