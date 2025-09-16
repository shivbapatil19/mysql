-- Create Database
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    faculty VARCHAR(50)
);

-- Insert Data into Students
INSERT INTO Students (student_id, student_name, course_id) VALUES
(1, 'Amit', 101),
(2, 'Neha', 102),
(3, 'Ravi', 103),
(4, 'Priya', 105);

-- Insert Data into Courses
INSERT INTO Courses (course_id, course_name, faculty) VALUES
(101, 'Computer Science', 'Dr. Sharma'),
(102, 'Mathematics', 'Dr. Rao'),
(103, 'Physics', 'Dr. Mehta'),
(104, 'Chemistry', 'Dr. Singh'),
(105, 'Biology', 'Dr. Khan');

--------------------------------------------------------
-- QUERIES USING RIGHT JOIN
--------------------------------------------------------

-- 1. List all courses and their enrolled students
SELECT s.student_name, c.course_name
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id;

-- 2. Show all courses with faculty and student details
SELECT s.student_id, s.student_name, c.course_name, c.faculty
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id;

-- 3. Find courses with no students enrolled
SELECT c.course_id, c.course_name
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id
WHERE s.student_id IS NULL;

-- 4. Count students enrolled in each course
SELECT c.course_name, COUNT(s.student_id) AS total_students
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id
GROUP BY c.course_name;

-- 5. Show student names with course faculty
SELECT s.student_name, c.course_name, c.faculty
FROM Students s
RIGHT JOIN Courses c ON s.course_id = c.course_id;
