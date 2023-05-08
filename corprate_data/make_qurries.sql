USE girrafe;
-- find all employees  
select * 
from employee
-- order by salary DESC;
order by SEX DESC, first_name, last_name
limit 5;



select first_name as forename, last_name as surname
from employee
order by SEX DESC, first_name, last_name
limit 5;







select distinct sex
from employee;
