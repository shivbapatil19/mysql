create database if not exists students;

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

select * from students.student_info;

#find all students who scored more than 99 marks
select * from student_info
where stud_marks>98;

#find all students whose id=2
select * from student_info
where stud_id=2;

#find name whose name=sai
select * from student_info
where stud_name="sai";
 
##Display all students sorted by marks in ascending order.
 select * from student_info
 order by stud_marks asc;


#display student id by desc order
select * from student_info
order by stud_id desc;

##remove top 2 peoples desc order depending on marks
select * from student_info
order by stud_marks
limit 2;

##remove top 2 peoples desc order depending on stud_id
select * from student_info
order by stud_id desc
limit 2;

##remove top 2 peoples asc order depending on stud_id
select * from student_info
order by stud_id asc
limit 3;