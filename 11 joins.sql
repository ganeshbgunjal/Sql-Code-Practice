show databases;
use db4;
show tables;

-- here in this file, we r going to study different types of join.
create table courses (
id int not null auto_increment primary key,
courseName varchar(20),
courseDurationMonths int,
courseFee int
);

select * from courses;

insert into courses(courseName, courseDurationMonths, courseFee)
values('web dev',2,10000),
('data science',9,40000),
('big data',6,30000),
('dsa',4,20000);

create table students (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
age int,
courseId int,
foreign key (courseId) references courses(id)
); 

select * from students;

insert into students(fname, lname, age)
values('a','aa',22);
('q','qq',23,4),
('w','ww',24,3),
('e','ee',22,2),
('r','rr',25,4),
('t','tt',26,1),
('y','yy',27,2),
('u','uu',28,3);


-- joins have 4 types
-- 	   1) inner join
--     2) left join
--     3)right join
--     4) left join

-- inner join-- it gives records that have matching values form tables;
select students.id, fname,lname,courseName 
from students
inner join courses
on students.courseId = courses.id;    # fetched successfully

-- left join-- it gives all records from left side and only matching records from right side.
select students.id, fname, lname, courseName
from students
left join courses
on students.courseId = courses.id;   # all records for left join fetched success

-- right join -- it gives all records from right side and only matching records from left side.
select students.id, fname, lname, courseName
from courses
right join students
on courses.id = students.courseId; 


-- full join -- this is union of right and left join

select students.id, fname, lname, courseName
from courses
right join students
on courses.id = students.courseId
union
select students.id, fname, lname, courseName
from students
left join courses
on students.courseId = courses.id; 

-- union gives only distinct records and union all gives all records from both tables. 








