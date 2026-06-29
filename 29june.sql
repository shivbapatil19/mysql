-- ============================================================
-- SQL BASICS PROJECT
-- File Name : 01_SQL_Basics_Medical_Dataset.sql
-- Author    : Shivba Patil
-- Description:
-- This file contains:
-- 1. Create Database
-- 2. Create Table
-- 3. Insert Sample Data
-- 4. 10 SQL Practice Queries
-- Topics Covered:
-- SELECT
-- WHERE
-- Comparison Operators
-- AND
-- OR
-- NOT
-- IN
-- ============================================================

-- ============================================================
-- STEP 1 : CREATE DATABASE
-- ============================================================

CREATE DATABASE Medical_DB;

-- Use the database
USE Medical_DB;

-- ============================================================
-- STEP 2 : CREATE TABLE
-- ============================================================

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(30),
    disease VARCHAR(30),
    doctor VARCHAR(30),
    height INT,
    weight INT,
    blood_group VARCHAR(5),
    admission_date DATE
);

-- ============================================================
-- STEP 3 : INSERT SAMPLE DATA
-- ============================================================

INSERT INTO patients VALUES
(1,'Rahul','Sharma',25,'Male','Pune','Fever','Dr. Mehta',170,68,'A+','2025-01-10'),
(2,'Sneha','Patil',30,'Female','Mumbai','Diabetes','Dr. Rao',158,72,'B+','2025-02-15'),
(3,'Amit','Verma',45,'Male','Nagpur','Heart Disease','Dr. Shah',175,82,'O+','2025-03-12'),
(4,'Priya','Joshi',28,'Female','Pune','Asthma','Dr. Mehta',162,60,'AB+','2025-04-18'),
(5,'Rohan','Kulkarni',35,'Male','Nashik','Fever','Dr. Singh',180,78,'A-','2025-05-22'),
(6,'Neha','Deshmukh',40,'Female','Aurangabad','Diabetes','Dr. Rao',160,70,'B-','2025-06-01'),
(7,'Vikas','Jadhav',50,'Male','Solapur','Cancer','Dr. Shah',172,85,'O-','2025-06-15'),
(8,'Anjali','More',22,'Female','Pune','Cold','Dr. Singh',155,52,'A+','2025-07-05'),
(9,'Karan','Yadav',33,'Male','Mumbai','Asthma','Dr. Mehta',177,74,'AB-','2025-07-20'),
(10,'Pooja','Kale',27,'Female','Kolhapur','Fever','Dr. Rao',165,59,'O+','2025-08-11');

-- ============================================================
-- Verify the data
-- ============================================================

SELECT * FROM patients;

-- ============================================================
-- PRACTICE QUESTION 1
-- Display all patient details.
-- ============================================================

SELECT *
FROM patients;

-- ============================================================
-- PRACTICE QUESTION 2
-- Display first name, last name and city of all patients.
-- ============================================================

SELECT
    first_name,
    last_name,
    city
FROM patients;

-- ============================================================
-- PRACTICE QUESTION 3
-- Display patients who belong to Pune.
-- ============================================================

SELECT *
FROM patients
WHERE city = 'Pune';

-- ============================================================
-- PRACTICE QUESTION 4
-- Display patients who have Fever.
-- ============================================================

SELECT *
FROM patients
WHERE disease = 'Fever';

-- ============================================================
-- PRACTICE QUESTION 5
-- Display patients whose age is greater than 30.
-- ============================================================

SELECT *
FROM patients
WHERE age > 30;

-- ============================================================
-- PRACTICE QUESTION 6
-- Display patients who belong to Pune AND have Fever.
-- ============================================================

SELECT *
FROM patients
WHERE city = 'Pune'
AND disease = 'Fever';

-- ============================================================
-- PRACTICE QUESTION 7
-- Display patients who belong to Mumbai OR Nagpur.
-- ============================================================

SELECT *
FROM patients
WHERE city = 'Mumbai'
OR city = 'Nagpur';

-- ============================================================
-- PRACTICE QUESTION 8
-- Display patients who do NOT have Diabetes.
-- ============================================================

SELECT *
FROM patients
WHERE NOT disease = 'Diabetes';

-- ============================================================
-- PRACTICE QUESTION 9
-- Display patients whose city is either
-- Pune, Mumbai or Solapur.
-- ============================================================

SELECT *
FROM patients
WHERE city IN ('Pune', 'Mumbai', 'Solapur');

-- ============================================================
-- PRACTICE QUESTION 10
-- Display first name, disease and doctor of patients
-- whose disease is either Fever or Asthma.
-- ============================================================

SELECT
    first_name,
    disease,
    doctor
FROM patients
WHERE disease IN ('Fever', 'Asthma');

-- ============================================================
-- END OF SQL BASICS - DAY 1
-- Topics Completed:
-- ✔ CREATE DATABASE
-- ✔ USE DATABASE
-- ✔ CREATE TABLE
-- ✔ INSERT INTO
-- ✔ SELECT
-- ✔ WHERE
-- ✔ Comparison Operators
-- ✔ AND
-- ✔ OR
-- ✔ NOT
-- ✔ IN
-- ============================================================