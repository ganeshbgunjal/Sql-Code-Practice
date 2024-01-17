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







