CREATE DATABASE SCHOOL;

USE SCHOOL;

CREATE TABLE Students
(
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Course VARCHAR(50),
    City VARCHAR(50),
    Marks INT,
    AdmissionDate DATE,
    Email VARCHAR(100)
);
INSERT INTO Students VALUES
(1,'Aarav','Sharma',20,'Male','BCA','Pune',85,'2024-06-10','aarav@gmail.com'),
(2,'Ananya','Patil',21,'Female','BCA','Mumbai',92,'2023-07-15','ananya@gmail.com'),
(3,'Rohan','Jadhav',22,'Male','BSc','Nagpur',76,'2022-08-20','rohan@gmail.com'),
(4,'Sneha','Kulkarni',20,'Female','BCom','Pune',88,'2024-01-05','sneha@gmail.com'),
(5,'Aditya','Deshmukh',23,'Male','BCA','Nashik',67,'2021-09-18','aditya@gmail.com'),
(6,'Pooja','Joshi',21,'Female','BSc','Mumbai',81,'2023-05-22','pooja@gmail.com'),
(7,'Karan','Patil',22,'Male','BTech','Pune',95,'2022-06-12','karan@gmail.com'),
(8,'Meera','Nair',20,'Female','BCA','Chennai',79,'2024-07-01','meera@gmail.com'),
(9,'Rahul','Verma',24,'Male','BCom','Delhi',73,'2021-11-10','rahul@gmail.com'),
(10,'Priya','Singh',21,'Female','BTech','Bangalore',90,'2023-03-28','priya@gmail.com'),
(11,'Vikas','Gupta',23,'Male','BSc','Jaipur',69,'2022-12-15','vikas@gmail.com'),
(12,'Divya','Iyer',22,'Female','BCA','Chennai',84,'2022-07-19','divya@gmail.com'),
(13,'Nikhil','Mishra',20,'Male','BCom','Lucknow',77,'2024-02-11','nikhil@gmail.com'),
(14,'Ritika','Agarwal',21,'Female','BTech','Delhi',91,'2023-08-08','ritika@gmail.com'),
(15,'Sanjay','Yadav',24,'Male','BCA','Indore',66,'2021-10-25','sanjay@gmail.com'),
(16,'Kavita','Shinde',22,'Female','BSc','Pune',87,'2022-04-14','kavita@gmail.com'),
(17,'Akash','Jain',23,'Male','BTech','Mumbai',94,'2021-06-30','akash@gmail.com'),
(18,'Simran','Kaur',20,'Female','BCom','Chandigarh',82,'2024-03-16','simran@gmail.com'),
(19,'Manish','Patel',22,'Male','BCA','Ahmedabad',71,'2022-09-09','manish@gmail.com'),
(20,'Neha','Kapoor',21,'Female','BTech','Hyderabad',89,'2023-01-17','neha@gmail.com');

#DISPLAY ALL THE STUDENT MARKS WISE
SELECT *
FROM Students
ORDER BY Marks;

#display the top 3 student marks wise
select *
from Students
order by Marks desc;

#Display only the FirstName and Marks of students, sorted by Marks in descending order.
select FirstName,marks
from Students
order by Marks desc;


##Write a query to:

#Display FirstName, Course, and Marks, sorted by:

#Marks in descending order.
#FirstName in ascending order (if marks are the same).

select FirstName,City,Marks
from Students
order by Marks desc , FirstName asc;


select FirstName,Course,City,Marks
from Students
order by Marks desc,Course asc, FirstName asc;

select FirstName, Marks 
from Students
order by Marks desc
limit 5;

## this are top 5

select Top 5 FirstName, Marks 
from Students
order by Marks desc;

#but the top is used at the starting and limit is used after order by

#display the student who are from pune and marks greater than 85
select *
from students
where City = 'Pune' and Marks > 80;

select *
from Students
where City = 'Mumbai' or Marks > 90;

