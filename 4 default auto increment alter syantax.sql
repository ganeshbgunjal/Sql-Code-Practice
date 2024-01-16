show databases;
use db1;


-- creating new table
-- auto increment increases value automatically

create table tblstudents (
id int not null auto_increment primary key,  
fname varchar(20),
lname varchar(20),
branch varchar(20),
age int
);

select * from tblstudents; 

-- default clause
-- when we want to set any value then we set default clause for that column


create table tblvillage (
id int not null auto_increment primary key, 
village_name varchar(20), 
population int,
state varchar(20)
);

-- here we dont use default clause, for that we can alter this using DDL commands

alter table tblvillage
modify state varchar(20) default "Maharashtra";

desc tblvillage;


select * from tblvillage;

insert into tblvillage(village_name, population, state)
values('abc',1200,'goa');

insert into tblvillage(village_name, population)
values('abc',1200);    # we dont provide any value for state column. still it used maharashtra. this is defautl clause. 


select * from tblvillage;

-- DDL   data definition language .  used for change structure of table. 

-- add-- we can add new column

alter table tblvillage
add column country varchar(20);

desc tblvillage;      # new column is added


-- modify--- to modify any column in the table. 

alter table tblvillage
modify population varchar(20);       # data type is modified from int to varchar. 

desc tblvillage;

-- drop column from table. first we will add some useless column like firstname

alter table tblvillage
add column first_name varchar(20);

desc tblvillage;    # new column is addded

alter table tblvillage
drop column first_name;

desc tblvillage;        ## first_name column is deleted

-- rename table. 

alter table tblvillage
rename to village;

select * from tblvillage;     #throwing error that table doesnt exist. 
select * from village;












