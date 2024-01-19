-- RANK AND DENSE RANK 

show databases;
use db4;

create table tblrank (
id int not null auto_increment primary key,
fname varchar(20),
sal int
);



insert into tblrank(fname,sal) 
values('zz',100),
('m',60),
('c',200),
('q',1000),
('w',700),
('t',40),
('g',90),
('j',60),
('s',500),
('f',3250);

select * from tblrank;

select id,fname,sal, 
rank() over(order by sal) as rankk,
dense_rank() over(order by sal desc) as densrankk
from tblrank; 


with res as 
(select id,fname,sal,
dense_rank() over (order by sal) as denserank
from tblrank )
select * from res where res.denserank = 3;

select min(sal) from (
select distinct(sal) from tblrank order by sal desc
) rownum where rownum < 3; 

-- if there is no duplicates then rownumber rank and denserank are same. difference comes when there is duplicates. 
-- see this nit
