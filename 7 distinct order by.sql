show databases;
use db2;

-- distinct order by limit clauses

create table employee (
id int not null auto_increment primary key,
fname varchar(20),
lname varchar(20),
dept varchar(20),
salary int
);

select * from employee;

insert into employee(fname,lname,dept,salary)
values('a','aa','mech',1200),
('a','aa','mech',1300),
('q','qq','science',1200),
('w','ww','arts',1100),
('e','ee','commerce',1000),
('r','rr','civil',900),
('t','tt','electrical',1400); 

select * from employee;


select count(*) from employee;     # total rows 7
select distinct(fname) from employee;   

select count(distinct(fname)) as distinct_name from employee;   #distinct fname = 6


-- limit used for fetching limited records

select * from employee limit 5;     #only 5 rows will be fetched

-- order by is used for ordering the column into descending or ascending order. 

select * from employee order by fname;      # it will order the fnames by asending order by default.
select * from employee order by fname desc;   # it will order the fnames by descending order by default.







