-- Aggregate functions 
-- min max count avg total are some aggregate function in sql

show databases;
use db2;

create table tbl_employee (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
dept varchar(20),
sal int
);

select * from tbl_employee;

insert into tbl_employee(fname,lname,dept,sal)
values('a','aa','civil',1200),
('q','qq','mech',1100),
('w','ww','computer',2000),
('e','ee','production',1400),
('r','rraa','support',2100),
('t','tt','electrical',600),
('y','yy','supply',1250);

select * from tbl_employee;

select avg(sal) as avg_sal from tbl_employee;  #avg salary 1378.57
select min(sal) as min_sal from tbl_employee;   # min sal 600 
select max(sal) as max_sal from tbl_employee;   # max sal 2100
select sum(sal) as sum_sal from tbl_employee;   # sum of salaries 9650
select count(sal) as empl_count from tbl_employee;   # total count of employees  7



create table employee1 ( 
id int not null auto_increment primary key, 
fname varchar(20),
sal int,
location varchar(20)
);

select * from employee1;

insert into employee1(fname,sal,location) values('a',1000,'pune'),('b',1100,'bangalore'),('c',1200,'mumbai'),('f',1300,'nashik'),
('h',1400,'pune'),('y',1500,'bangalore'),('o',2000,'mumbai'),('r',1900,'nashik'),('g',2800,'nashik'),('k',2100,'bangalore'),('x',3000,'pune'),('z',1700,'mumbai'),
('p',1800,'nashik'),('q',2300,'nashik'),('t',2500,'mumbai'),('l',2200,'pune'),('m',1600,'nashik');

select * from employee1;
select count(*) total_empl from employee1;

select min(sal) as min_sal from employee1 where location = 'bangalore';     #min sal 1100
select max(sal) as min_sal from employee1 where location = 'bangalore';     # max sal 2100

select count(*) as total_emp from employee1 where location = 'nashik';    #6 employee
select count(*) as total_emp from employee1 where location = 'bangalore';    #3 employee

select count(distinct(location)) as total_city from employee1;     # 4 distinct cities.

select location, sum(sal) as sal_sum from employee1 group by location;

# pune 7600 
# bangalore 4700 
# mumbai 7400
# nashik 11700



