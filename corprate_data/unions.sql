USE girrafe;

-- % (any number of characheter)  _ (only one charachter)
select * 
from client
where client_name like '%LLC'
union
select * 
from branch_supplier
where supplier_name like '%abel%';



select client_name 
from client
union
select supplier_name 
from branch_supplier;




