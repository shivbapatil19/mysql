-- Create Database
CREATE DATABASE IF NOT EXISTS company;
USE company;

-- Create Employees Table
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  emp_dept VARCHAR(20),
  emp_salary INT
);

-- Insert Sample Data
INSERT INTO employees VALUES
(1, 'Amit', 'HR', 40000),
(2, 'Sneha', 'HR', 45000),
(3, 'Raj', 'IT', 60000),
(4, 'Priya', 'IT', 65000),
(5, 'Arjun', 'Finance', 55000),
(6, 'Meera', 'Finance', 50000),
(7, 'Vikram', 'IT', 70000);


-- Basic GROUP BY Operations


-- 1. Count employees in each department
SELECT emp_dept, COUNT(*) AS total_employees
FROM employees
GROUP BY emp_dept;

-- 2. Total salary of each department
SELECT emp_dept, SUM(emp_salary) AS total_salary
FROM employees
GROUP BY emp_dept;

-- 3. Average salary of each department
SELECT emp_dept, AVG(emp_salary) AS avg_salary
FROM employees
GROUP BY emp_dept;

-- Using HAVING Clause


-- 4. Departments with total salary > 1,00,000
SELECT emp_dept, SUM(emp_salary) AS total_salary
FROM employees
GROUP BY emp_dept
HAVING SUM(emp_salary) > 100000;

-- 5. Departments with more than 2 employees
SELECT emp_dept, COUNT(*) AS total_employees
FROM employees
GROUP BY emp_dept
HAVING COUNT(*) > 2;
