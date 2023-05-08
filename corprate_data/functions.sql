USE girrafe;

select count(emp_id)
from employee;

select count(emp_id)
from employee
where sex = 'F' AND birthday > '1970-01-01';

-- distinct
select distinct sex
from employee;

-- AVG
select avg(salary)
from employee;

-- SUM
select sum(salary)
from employee;

-- count   aggrigation
select count(sex), sex
from employee
group by sex;

-- for each salesman

select emp_id, sum(total_sales)
from works_with 
group by emp_id;

-- 
select emp_id, sum(total_sales), first_name
from works_with and employee
group by emp_id;
