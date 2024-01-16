show databases;
use db1;


-- primary key and unique key. 
-- both are used for indentifying each record uniquely. but have some differences also. 

create table employee (
id int not null auto_increment primary key,
first_name varchar(20),
last_name varchar(20),
age int,
dept varchar(20)
);

select * from employee;

insert into employee(first_name, last_name, age, dept)
values('a','aa',23,'mech'),
('q','qq',24,'production'),
('d','dd',26,'maintenance');

-- we can use only one pk while we can use multiple unique key. unique key avoids duplication of record. 

create table students (
id int not null auto_increment primary key, 
fname varchar(20),
lname varchar(20),
branch varchar(20) unique          ## it will avoid duplication
);

select * from students;

insert into students(fname, lname, branch)
values('a','aa','computer'),
('q','qq','electrical'),
('g','ff','civil');




