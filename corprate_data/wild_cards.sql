USE girrafe;

-- % (any number of characheter)  _ (only one charachter)
select *
from client
where client_name like '%LLC';


select * 
from branch_supplier
where supplier_name like '%abel%';

select * 
from employee
where birthday like '____-07-__';
