USE girrafe;

-- inner join !!!
select employee.emp_id, employee.first_name, branch.branch_name 
from  employee
join branch
on employee.emp_id = branch.mgr_id;

-- left join!
select employee.emp_id, employee.first_name, branch.branch_name 
from  employee
left join branch
on employee.emp_id = branch.mgr_id;

-- right join!
select employee.emp_id, employee.first_name, branch.branch_name 
from  employee
right join branch
on employee.emp_id = branch.mgr_id;





select employee.emp_id, employee.first_name, works_with.total_sales
from employee
join works_with
on employee.emp_id=works_with.emp_id
order by  works_with.total_sales DESC
limit 5 ;

