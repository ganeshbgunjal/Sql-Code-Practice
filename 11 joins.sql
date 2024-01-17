show databases;
create database db4;
use db4;


-- for joining, there is need 2 tables.

-- students table
create table students (
id int not null auto_increment primary key, 
fname varchar(20),
lname varchar(20),
age int
);

select * from students;

create table courses (
id int not null auto_increment primary key,
course_name varchar(20),
duration_months int,
course_fee int
);

select * from courses; 


