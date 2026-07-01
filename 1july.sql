
CREATE DATABASE MobileCompanyDB;


USE MobileCompanyDB;


CREATE TABLE MobileUsers (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50),
    Brand VARCHAR(30),
    PlanType VARCHAR(20),
    MonthlyRecharge INT,
    DataUsedGB DECIMAL(5,2),
    CallMinutes INT,
    Age INT,
    RegistrationDate DATE
);


INSERT INTO MobileUsers VALUES
(101,'Rahul','Patil','Pune','Jio','Prepaid',299,18.5,450,23,'2024-01-10'),
(102,'Sneha','Kulkarni','Mumbai','Airtel','Postpaid',799,35.2,850,29,'2023-11-15'),
(103,'Amit','Joshi','Delhi','Vi','Prepaid',249,12.8,380,27,'2024-02-20'),
(104,'Priya','Sharma','Pune','Jio','Postpaid',999,48.6,920,31,'2023-09-12'),
(105,'Akash','Jain','Nagpur','BSNL','Prepaid',199,8.4,210,24,'2024-03-18'),
(106,'Neha','Verma','Mumbai','Airtel','Prepaid',399,22.7,510,26,'2024-01-25'),
(107,'Rohan','Patil','Pune','Jio','Prepaid',299,19.3,480,25,'2024-04-10'),
(108,'Pooja','Nair','Chennai','Vi','Postpaid',699,30.1,720,34,'2023-12-08'),
(109,'Karan','Singh','Delhi','Airtel','Prepaid',349,15.6,410,28,'2024-02-05'),
(110,'Divya','Gupta','Hyderabad','Jio','Postpaid',899,41.8,890,30,'2023-10-30'),
(111,'Vikas','Yadav','Pune','BSNL','Prepaid',199,9.2,250,22,'2024-05-15'),
(112,'Anjali','Patel','Mumbai','Jio','Prepaid',299,17.5,430,27,'2024-03-02'),
(113,'Sanjay','Mishra','Delhi','Vi','Postpaid',749,32.4,780,36,'2023-08-22'),
(114,'Ritika','Agarwal','Bangalore','Airtel','Prepaid',399,24.8,560,29,'2024-01-18'),
(115,'Manish','Kumar','Pune','Jio','Postpaid',1099,55.3,980,33,'2023-07-14');


#lets start to learn some of the function haivng and group by 
## Display the total number of mobile users.
select count(*)
from mobileusers;

##Write a query to find the total monthly recharge amount of all users.
select sum(monthlyrecharge)
from mobileusers;

##Now write a query to find the average monthly recharge of all users.
select avg(monthlyrecharge)
from mobileusers;

##Write a query to find the highest monthly recharge.
select max(monthlyrecharge)
from mobileusers;

#Write a query to find the lowest monthly recharge.
select min(monthlyrecharge)
from mobileusers;

#Write a query to display:
#City
#Total number of users in each city
select City, count(*) as totaluser
from mobileusers 
group by city;

## Write a query to display:
#Brand
#Total Monthly Recharge collected for each brand.
#SUM()
##This is the next logical step after counting groups.

select Brand , sum(monthlyrecharge) as totalrecharge
from mobileusers
group by Brand;

#Write a query to display:
#PlanType
#Average Data Used (GB) for each plan type.
select plantype,avg(datausedGB) as averagedata
from mobileusers
group by plantype;

#Write a query to display:
#City
#Highest Monthly Recharge in each city.
select city,max(monthlyrecharge)
from mobileusers
group by city;

#Write a query to display:
#City
#Total number of users
select city,count(USERID)
from mobileusers
group by city
having count(userid) > 2;

##Display:
#City
#Total number of users
#Show only those cities that have more than 2 users.
select city,count(userid) as totaluser
from mobileusers
group by city
having  count(userid) > 2;

##Display:
#brand
#Number of users
#Average data usage
#Show only those brands that:
#have at least 3 users, and
#have an average data usage greater than 20 GB.

select brand, count(userid), avg(datausedGB)
from mobileusers
group by brand
having count(userid) >2 and avg(datausedGB) > 20;