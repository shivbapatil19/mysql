create database hospital;

use hospital;

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50),
    BloodGroup VARCHAR(5),
    Disease VARCHAR(50),
    Doctor VARCHAR(50),
    Department VARCHAR(50),
    AdmissionDate DATE,
    DischargeDate DATE,
    BillAmount DECIMAL(10,2),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);

INSERT INTO Patients VALUES
(101,'Rahul','Sharma','Male',25,'Pune','A+','Fever','Dr. Mehta','General','2025-01-05','2025-01-08',4500.00,'9876543210','rahul@gmail.com'),
(102,'Priya','Patil','Female',32,'Mumbai','B+','Diabetes','Dr. Shah','Endocrinology','2025-02-10',NULL,18500.00,'9876543211','priya@gmail.com'),
(103,'Amit','Joshi','Male',45,'Delhi','O+','Heart Disease','Dr. Kapoor','Cardiology','2025-01-18','2025-01-28',95000.00,'9876543212','amit@gmail.com'),
(104,'Sneha','Kulkarni','Female',28,'Pune','AB+','Fracture','Dr. Rao','Orthopedics','2025-03-12','2025-03-20',42000.00,'9876543213','sneha@gmail.com'),
(105,'Rohan','Patil','Male',36,'Nagpur','A-','Asthma','Dr. Khan','Pulmonology','2025-04-08',NULL,21000.00,'9876543214','rohan@gmail.com'),
(106,'Pooja','Joshi','Female',24,'Mumbai','O-','Fever','Dr. Mehta','General','2025-02-22','2025-02-25',3800.00,'9876543215','pooja@gmail.com'),
(107,'Akash','Jain','Male',52,'Hyderabad','B-','Cancer','Dr. Reddy','Oncology','2025-01-30',NULL,150000.00,'9876543216','akash@gmail.com'),
(108,'Neha','Verma','Female',30,'Delhi','A+','Migraine','Dr. Singh','Neurology','2025-03-05','2025-03-07',12500.00,'9876543217','neha@gmail.com'),
(109,'Karan','Yadav','Male',40,'Pune','O+','Diabetes','Dr. Shah','Endocrinology','2025-04-15',NULL,24000.00,'9876543218',NULL),
(110,'Anjali','Singh','Female',35,'Chennai','AB-','Heart Disease','Dr. Kapoor','Cardiology','2025-05-01','2025-05-10',98000.00,'9876543219','anjali@gmail.com'),
(111,'Vikas','Gupta','Male',29,'Bangalore','B+','Fracture','Dr. Rao','Orthopedics','2025-05-08','2025-05-15',39000.00,'9876543220','vikas@gmail.com'),
(112,'Divya','Nair','Female',41,'Kochi','A+','Cancer','Dr. Reddy','Oncology','2025-02-14',NULL,175000.00,'9876543221','divya@gmail.com'),
(113,'Manish','Patel','Male',33,'Ahmedabad','O-','Asthma','Dr. Khan','Pulmonology','2025-03-11','2025-03-18',19500.00,'9876543222','manish@gmail.com'),
(114,'Ritika','Agarwal','Female',27,'Delhi','B+','Fever','Dr. Mehta','General','2025-04-25','2025-04-28',4200.00,'9876543223','ritika@gmail.com'),
(115,'Sanjay','Mishra','Male',38,'Lucknow','A-','Migraine','Dr. Singh','Neurology','2025-05-18',NULL,13500.00,'9876543224','sanjay@gmail.com');

select *
from patients 
where city = 'Pune' and disease = 'fever';

-- ============================================================
-- SQL PRACTICE - AND, OR, NOT, IN, BETWEEN, LIKE, IS NULL, AS
-- Dataset: Patients
-- ============================================================

---------------------------------------------------------------
-- Question 1
-- Display all patients who are from Pune AND have Fever.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE City = 'Pune'
AND Disease = 'Fever';


---------------------------------------------------------------
-- Question 2
-- Display FirstName, LastName, Disease and BillAmount
-- of patients in Cardiology department having BillAmount > 90000.
---------------------------------------------------------------

SELECT FirstName, LastName, Disease, BillAmount
FROM Patients
WHERE Department = 'Cardiology'
AND BillAmount > 90000;


---------------------------------------------------------------
-- Question 3
-- Display all patients who are from Mumbai OR Delhi.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE City = 'Mumbai'
OR City = 'Delhi';


---------------------------------------------------------------
-- Question 4
-- Display all patients suffering from Cancer OR Heart Disease.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE Disease = 'Cancer'
OR Disease = 'Heart Disease';


---------------------------------------------------------------
-- Question 5
-- Display all patients who are NOT from Pune.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE NOT City = 'Pune';


---------------------------------------------------------------
-- Question 6
-- Display all patients whose city is Pune, Mumbai or Delhi.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE City IN ('Pune', 'Mumbai', 'Delhi');


---------------------------------------------------------------
-- Question 7
-- Display all patients whose Disease is Fever, Diabetes
-- or Migraine.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE Disease IN ('Fever', 'Diabetes', 'Migraine');


---------------------------------------------------------------
-- Question 8
-- Display patients whose BillAmount is BETWEEN
-- 10000 and 50000.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE BillAmount BETWEEN 10000 AND 50000;


---------------------------------------------------------------
-- Question 9
-- Display patients whose Age is BETWEEN
-- 25 and 35.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE Age BETWEEN 25 AND 35;


---------------------------------------------------------------
-- Question 10
-- Display patients whose FirstName starts with 'R'.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE FirstName LIKE 'R%';


---------------------------------------------------------------
-- Question 11
-- Display patients whose FirstName ends with 'a'.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE FirstName LIKE '%a';


---------------------------------------------------------------
-- Question 12
-- Display patients whose LastName contains 'Pat'.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE LastName LIKE '%Pat%';


---------------------------------------------------------------
-- Question 13
-- Display patients whose Email is NULL.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE Email IS NULL;


---------------------------------------------------------------
-- Question 14
-- Display patients whose DischargeDate is NULL.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE DischargeDate IS NULL;


---------------------------------------------------------------
-- Question 15
-- Display FirstName as Patient_Name,
-- LastName as Surname,
-- BillAmount as Total_Bill.
---------------------------------------------------------------

SELECT
    FirstName AS Patient_Name,
    LastName AS Surname,
    BillAmount AS Total_Bill
FROM Patients;


---------------------------------------------------------------
-- Question 16 (Interview Level)
-- Display patients from Pune OR Mumbai
-- having BillAmount greater than 20000.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE (City = 'Pune' OR City = 'Mumbai')
AND BillAmount > 20000;


---------------------------------------------------------------
-- Question 17 (Interview Level)
-- Display patients NOT belonging to
-- Cardiology department.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE NOT Department = 'Cardiology';


---------------------------------------------------------------
-- Question 18 (Interview Level)
-- Display patients aged between
-- 30 and 45 from Delhi.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE Age BETWEEN 30 AND 45
AND City = 'Delhi';


---------------------------------------------------------------
-- Question 19 (Interview Level)
-- Display patients whose Doctor is
-- Dr. Mehta or Dr. Shah.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE Doctor IN ('Dr. Mehta', 'Dr. Shah');


---------------------------------------------------------------
-- Question 20 (Interview Level)
-- Display patients whose Email is NOT NULL.
---------------------------------------------------------------

SELECT *
FROM Patients
WHERE Email IS NOT NULL;