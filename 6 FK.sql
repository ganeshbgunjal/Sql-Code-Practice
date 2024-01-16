show databases;
use db1;


-- we going to see foreign key concept. FK prevent actions that will destoy links between 2 tables. 
-- FK of one table is always PK of first table or parent table

create database db2;
use db2;

create table courses (
id int not null auto_increment primary key, 
course_name varchar(20),
course_fee int,
course_duration_months int
);

select * from courses;

create table students ( 
id int not null primary key, 
fname varchar(20),
lname varchar(20),
course_id int
);

-- we dont add fk here. now we will use alter alter command to change table structure. 

alter table students
add foreign key(course_id) references courses(id);

desc students; 
select * from students;
select * from courses;


insert into courses(course_name, course_fee, course_duration_months)
values('web dev',10000,3),
('data analytics',20000,4),
('data science',40000,6),
('big data',25000,3);



ALTER TABLE students 
MODIFY COLUMN id INT auto_increment;

insert into students(fname, lname, course_id)
values('a','aa',1),
('q','qq',2),
('w','ww',3),
('r','rr',4),
('t','tt',3);

select * from students;
select * from courses;

-- it prevents data integrity means we can not add values more than course id value or we
--  can not add any other dept id other than course id..



