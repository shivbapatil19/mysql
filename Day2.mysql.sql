1.create database employee;

use employee;

create table emp_info(
emp_id int primary key,
emp_name char(30),
emp_salary float not null,
emp_number int unique);

insert into emp_info (emp_id,emp_name,emp_salary,emp_number)
values (1,"shiva",3000.0,01),
(2,"shiva",3000.0,02),
(3,"shiva",300.00,03),
(4,"shiva",3000.0,04);

select * from emp_info;




2.create database library;

use library;

create table books_info(
book_name char(20) not null,
book_id int primary key,
book_price float not null,
book_writer char(20) not null);

insert into books_info(book_name,book_id,book_price,book_writer)
values ("mysql",01,399.01,"shivapatil"),
("python",02,499.99,"gudovanrusom"),
("artoflettingo",03,599.99,"ahique");

select * from books_info;



3.create database if not exists students;

use students;

create table student_info(
stud_name char(40) not null,
stud_id int primary key,
stud_marks int not null,
stud_perc float not null);

insert into student_info (stud_name,stud_id,stud_marks,stud_perc)
values ("shiva",01,98,98.09),
("sai",02,99,99.99),
("sham",03,99,99.87),
("ronit",04,98,97.99);

select * from student_info;

			