show databases;
use db4;

create table emp (
id int not null auto_increment primary key, 
fname varchar(20),
lname varchar(20),
sal int,
joining_source varchar(20)
);

select * from emp;

insert into emp(fname, lname, sal, joining_source) values('a','aa',1200,'friend'),
('w','ww',2000,'linkedin'),
('t','tt',900,'google'),
('y','yy',2600,'youtube'),
('i','ii',3000,'friend'),
('k','kk',6500,'linkedin'),
('f','ff',5600,'google'),
('n','nn',4500,'friend');

select joining_source, count(*) as total from emp group by joining_source;

-- i want only that rows whiere total is greater than 1
select joining_source,count(*) as total from emp group by joining_source having total>2;

-- having is used after groupby. whereas where is used before group by
-- where filters individuals records while having filters records from group by.

select joining_source,count(*) as total from emp where joining_source = 'linkedin';


create table emp1 (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
sal int,
joining_source varchar(20),
experience int
);

select * from emp1;

insert into emp1(fname, lname, sal, joining_source,experience) values('a','aa',1200,'friend',2),
('w','ww',2000,'linkedin',5),
('t','tt',900,'google',9),
('y','yy',2600,'youtube',3),
('i','ii',3000,'friend',4),
('k','kk',6500,'linkedin',7),
('f','ff',5600,'google',10),
('n','nn',4500,'friend',11);

select joining_source, count(*) as total from emp1 where experience >=5 group by joining_source;

-- where is used for filtering individuals records.
-- having is used for filtering records after aggregation.
-- we can use where and having in same querry also.




