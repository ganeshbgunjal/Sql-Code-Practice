-- over and partition by clause

show databases;
use db4;

create table empl1 (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
age int,
sal int,
location varchar(20)
);



insert into empl1(fname, lname, age, sal, location) values('a','aa',22,1200,'pune'),
('q','qq',23,1400,'nashik'),
('t','tt',27,1100,'pune'),
('h','hh',29,1000,'hydrabad'),
('l','ll',30,2000,'bangalore'),
('d','dd',25,2500,'pune'),
('m','mm',28,3000,'bangalore'),
('s','ss',22,4000,'hydrabad'),
('l','ll',23,4500,'pune'),
('j','jj',24,4200,'bangalore');

select * from empl1;

select location, count(location) as loc_count, avg(sal) as avg_sal from empl1
group by location;

select fname,lname,location, count(location) over(partition by location) as locations, 
avg(sal) over(partition by location) as avgsal
from empl1;

-- here it will first do partition and then it will find avg sal and then it will work for fname and lname.

