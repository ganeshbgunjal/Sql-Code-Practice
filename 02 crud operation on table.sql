show databases;
use db1;

-- creating table 
create table tblemployee (
id int not null primary key, 
first_name varchar(20),
last_name varchar(20),
age int,
dob date
);

-- view structure of table
desc tblemployee;


-- fetch data from table
select * from tblemployee;   ## empty table. 

-- insert data into table

insert into tblemployee(id, first_name, last_name, age, dob) 
values(1,"ganesh",'gunjal',23,'2000/03/22');

-- bulk insert

insert into tblemployee(id, first_name, last_name, age, dob) 
values(11,"hhh",'mmm',23,'2000/03/22'),
(2,"aa",'rr',23,'2000/03/22'),
(3,"ss",'ee',23,'2000/03/22'),
(4,"dd",'tt',23,'2000/03/22'),
(6,"ff",'yy',23,'2000/03/22'),
(7,"gg",'hh',23,'2000/03/22');

