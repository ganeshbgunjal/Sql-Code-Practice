-- ROW NUMBER

show databases;
use db4;

create table rownumber ( 
id int not null auto_increment primary key, 
fname varchar(20),
sal int
);

select * from rownumber;

insert into rownumber(fname,sal)
values('a',1200),
('w',100),
('q',700),
('r',13000),
('t',300),
('y',1800),
('u',2200),
('j',1235);

select * from rownumber;

select fname,sal,row_number() over(order by sal) as salorder
from rownumber;

-- suppose we want to find 5th highest sal 
select * from  (select fname,sal,row_number() over(order by sal) as salnum 
from rownumber )templtable where salnum = 5;

create table tblpartition (
id int not null auto_increment primary key, 
fname varchar(20),
sal int,
location varchar(20) 
);

select * from tblpartition;

insert into tblpartition(fname,sal,location)
values('a',1200,'pune'),
('q',1100,'mumbai'),
('w',900,'nashik'),
('r',400,'bangalore'),
('t',1300,'bangalore'),
('g',1800,'nashik'),
('h',2000,'mumbai'),
('k',2100,'pune'),
('l',300,'bangalore'),
('v',1700,'nashik');

select * from tblpartition;

select fname,sal,location,
row_number() over(order by sal) as rownum 
from tblpartition;

select * from (select fname,sal,location,
row_number() over(order by sal) as rownum 
from tblpartition ) temptable where rownum = 6;

select id,fname,sal,location,
row_number() over(partition by location order by sal) as partitionby
from tblpartition;

select * from (select id,fname,sal,location, 
row_number() over(partition by location order by sal) as rownum from tblpartition ) temptabl 
where rownum=1;


-- rownum comes with order by clause. its mandatory. 
-- when we want records on some filter basis, we can use partition by also. its optional. we can use it as per requirement. 


