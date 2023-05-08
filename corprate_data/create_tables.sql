USE girrafe;
-- drop table student;
 SET FOREIGN_KEY_CHECKS = 0;
 drop table employee;
 drop table branch; 
 drop table client;
 drop table works_with;
 drop table branch_supplier;
 SET FOREIGN_KEY_CHECKS = 1;

create table employee (
emp_id int primary key,
first_name varchar(40),
last_name varchar(40),
birthday date,
SEX varchar(1),
salary int,
super_id int,
branch_id int
);

create table branch (
branch_id int primary key,
branch_name varchar(40),
mgr_id int,
mgr_start_date date,
foreign key (mgr_id) references employee(emp_id) on delete set NULL
);

-- connecting branch_id in the employee table to the branch_id in branch table as foreign key!!!!
alter table employee
add foreign key (branch_id)
references branch(branch_id)
on delete set NULL;

alter table employee
add foreign key (super_id)
references employee(emp_id)
on delete set NULL;

create table client (
client_id int primary key,
client_name varchar(40),
branch_id int,
foreign key (branch_id) references branch(branch_id) on delete set NULL
);


create table works_with (
emp_id int,
client_id int,
total_sales int,
primary key (emp_id,client_id),
foreign key (emp_id) references employee(emp_id) on delete CASCADE,
foreign key (client_id) references client(client_id) on delete CASCADE
);

create table branch_supplier (
branch_id int,
supplier_name varchar(40),
supply_type varchar(40),
primary key (branch_id,supplier_name),
foreign key (branch_id) references branch(branch_id) on delete CASCADE
);

select * from branch;
select * from employee;





