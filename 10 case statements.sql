show databases;
use db3;

-- we are going to see case statements in sql.

create table case_statement ( 
id int not null auto_increment primary key, 
first_name varchar(20),
company varchar(20)
);

select * from case_statement;

insert into case_statement(first_name,company) values('a','google'),
('q','microsoft'),
('w','flipcart'),('e','amazon'),('r','nice'),('t','tcs'),('y','infosys'),('u','tech mahindra');

select * from case_statement; 

select id,first_name,company, 
case
	when company in ('google', 'microsoft', 'flipcart') then "Product Based"
	else "Service Based"
	end as CompnayType
from case_statement;

select id, first_name, company, 
case
	when company in ('google', 'microsoft','flipcart') then "ProductBased"
	else "Service -Based"
	end as 'CompanyTypes'
from case_statement; 


--  another example
create table tblCase ( 
id int not null auto_increment primary key,  
course_name varchar(20), 
duration int,
course_fee decimal(6,1)
);

select * from tblCase;

insert into tblCase(course_name, duration, course_fee) values('big data',6,40000),
('web dev',4,30000),
('data science',9,60000),
('data structure',2,20000);

select id, course_name, duration, 
case 
	when duration > 4 then 'Masters'
    else "Diploma"
    end as 'coursetype'
from tblCase;




