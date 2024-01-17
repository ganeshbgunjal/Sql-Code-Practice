show databases;
use db1;

-- update table syantax
-- we have created employee table. lets update that
select * from tblemployee;

-- update table
update tblemployee
set first_name = 'rahul'
where id = 2;

-- if we dont use where clause then it will update all records first name column. 
select * from tblemployee;

-- delete records in table

delete from tblemployee
where id = 2;

select * from tblemployee;    # deleted record for id =2




