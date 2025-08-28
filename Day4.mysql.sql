
CREATE DATABASE company;


USE company;


CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    emp_dept VARCHAR(30) NOT NULL,
    emp_salary INT NOT NULL,
    emp_age INT NOT NULL
);


INSERT INTO employee (emp_id, emp_name, emp_dept, emp_salary, emp_age)
VALUES
(1, 'Shiva Patil', 'IT', 60000, 28),
(2, 'Aman Khan', 'HR', 45000, 32),
(3, 'Riya Sharma', 'Finance', 70000, 30),
(4, 'Sneha More', 'IT', 80000, 26),
(5, 'Aditya Rao', 'Marketing', 50000, 29),
(6, 'Pooja Nair', 'Finance', 65000, 35),
(7, 'Arjun Mehta', 'IT', 75000, 27),
(8, 'Meena Kulkarni', 'HR', 40000, 31),
(9, 'Kiran Desai', 'Marketing', 48000, 25),
(10, 'Sai Joshi', 'Finance', 72000, 33);

select * from employee;


##display all employee who works in it department
select * from employee
where emp_dept="IT";

##Show all employees whose salary is greater than 60,000, ordered by salary in ascending order.
select * from employee
where emp_salary > 60000
ORDER BY emp_salary;

##List the top 3 highest-paid employees.
select * from employee
where emp_salary
order by emp_salary desc
limit 3;

##Display employees from the Finance department, sorted by age in descending order.
select * from employee
where emp_dept="finance"
order by emp_age desc;

##Show employees whose age is less than 30, ordered by salary in descending order.
select * from employee
where emp_age<30
order by emp_salary desc;

##Display the 2 youngest employees in the company.
select * from employee
order by emp_age
limit 2;

##List employees who earn between 45,000 and 70,000, ordered by salary ascending.
select * from employee
where emp_salary between 45000 and 70000
order by emp_salary ;

##List employees who earn between or equall 45,000 and 70,000, ordered by salary ascending.
select * from employee
where emp_salary >= 45000 and emp_salary <= 70000
order by emp_salary ;

##Show employees from the HR department, but only the first 2 results.
select * from employee
where emp_dept='HR'
order by emp_dept
limit 2 ;

##Display the oldest employee (highest age).
select * from employee
order by emp_age desc
limit 1;

##Show employees whose name starts with ‘A’, ordered by salary in descending order
select * from employee
where emp_name like 'A%'
order by emp_salary desc;
