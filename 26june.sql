CREATE DATABASE COMPANYDBS;

USE COMPANYDBS;

CREATE TABLE EMPLOYEES
(
EMPLOYEEID INT PRIMARY KEY,
FIRSTNAME VARCHAR(30),
LASRNAME VARCHAR(50),
AGE INT,
GENDER VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY DECIMAL(10,2),
CITY VARCHAR(50),
HIREDATE DATE,
EMAIL VARCHAR(100)
);
 INSERT INTO EMPLOYEES VALUES
(101,'Rahul','Sharma',24,'Male','IT',50000,'Pune','2023-01-15','rahul.sharma@gmail.com'),
(102,'Priya','Patel',26,'Female','HR',60000,'Mumbai','2022-03-10','priya.patel@gmail.com'),
(103,'Amit','Singh',30,'Male','Finance',75000,'Bangalore','2021-07-20','amit.singh@gmail.com'),
(104,'Sneha','Joshi',25,'Female','IT',55000,'Pune','2024-02-01','sneha.joshi@gmail.com'),
(105,'Rohit','Verma',28,'Male','Sales',65000,'Hyderabad','2020-08-15','rohit.verma@gmail.com'),
(106,'Neha','Kapoor',29,'Female','Marketing',62000,'Delhi','2022-09-18','neha.kapoor@gmail.com'),
(107,'Arjun','Patil',31,'Male','IT',90000,'Pune','2019-06-30','arjun.patil@gmail.com'),
(108,'Pooja','Kulkarni',27,'Female','HR',58000,'Mumbai','2021-11-05','pooja.kulkarni@gmail.com'),
(109,'Karan','Mehta',35,'Male','Finance',95000,'Ahmedabad','2018-12-12','karan.mehta@gmail.com'),
(110,'Anjali','Rao',26,'Female','Sales',61000,'Hyderabad','2023-04-25','anjali.rao@gmail.com'),
(111,'Vikas','Gupta',32,'Male','Marketing',72000,'Delhi','2019-10-10','vikas.gupta@gmail.com'),
(112,'Meera','Nair',29,'Female','IT',67000,'Chennai','2020-05-14','meera.nair@gmail.com'),
(113,'Sanjay','Yadav',33,'Male','Sales',71000,'Lucknow','2018-09-19','sanjay.yadav@gmail.com'),
(114,'Ritika','Agarwal',24,'Female','HR',52000,'Jaipur','2024-01-08','ritika.agarwal@gmail.com'),
(115,'Manish','Deshmukh',36,'Male','Finance',98000,'Nagpur','2017-03-11','manish.deshmukh@gmail.com'),
(116,'Kavita','Shinde',28,'Female','IT',64000,'Pune','2022-06-17','kavita.shinde@gmail.com'),
(117,'Nikhil','Mishra',27,'Male','Marketing',59000,'Indore','2023-07-09','nikhil.mishra@gmail.com'),
(118,'Divya','Iyer',31,'Female','Sales',76000,'Chennai','2020-11-21','divya.iyer@gmail.com'),
(119,'Akash','Jain',34,'Male','HR',69000,'Delhi','2019-02-27','akash.jain@gmail.com'),
(120,'Simran','Kaur',25,'Female','IT',57000,'Chandigarh','2024-03-18','simran.kaur@gmail.com');
 
 ## To see employees record
SELECT *
FROM EMPLOYEES;

## WRITE THE QUERY TO DISPLAY THE FIRSTNAME AND LASTNAME
SELECT FIRSTNAME,LASRNAME
FROM EMPLOYEES;

## write the query to display the three column firstname department and salary
SELECT FIRSTNAME, DEPARTMENT, SALARY
FROM EMPLOYEES;

##WRITE A QUERY AND DISPLAY THE PEOPLE WHO WORKS IN IT
SELECT * 
FROM EMPLOYEES
WHERE DEPARTMENT = 'IT';

##Now write a query to display employees whose Salary is greater than 60000.
SELECT *
FROM EMPLOYEES
WHERE SALARY > 60000;

##Write a query to display only the unique departments from the Employees tab
SELECT distinct DEPARTMENT
FROM EMPLOYEES;