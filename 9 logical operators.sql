create database db3;
use db3;

create table employee (
id int not null auto_increment primary key, 
fname varchar(20),
sal int,
location varchar(20)
);

select * from employee;

insert into employee(fname, sal, location) values('a',1200,'pune'),('q',1300,'nashik'),
('w',1100,'bangalore'),('e',2200,'hydrabad'),('t',4200,'nashik'),('y',2600,'hydrabad'),
('u',3400,'pune'),('p',3000,'bangalore'),('h',5000,'pune');

select * from employee;

select count(*) as total_count from employee;

select * from employee where location = 'hydrabad';

select count(*) from employee where location = 'hydrabad';
select count(*) from employee where location = 'bangalore';

select count(*) total_emp from employee where location != 'bangalore';

select * from employee where sal>3000;
select count(*) from employee where sal>3000;

select * from employee where sal<3000;
select count(*) from employee where sal<3000;




















