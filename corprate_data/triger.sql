USE girrafe;
-- drop table trigger_test;
drop trigger my_trigger;
-- create table trigger_test (
-- message varchar(100)
-- );

Delimiter $$
create 
      TRIGGER my_trigger before insert  -- we can use it instead of  insert, for  UPDATE  and DELETE  -- also instead of before, you can use after
      on employee
      for each row begin
          if new.sex = 'M' then
              insert into trigger_test values ('added male employee');
              insert into trigger_test values (new.first_name);
          elseif new.sex = 'F' then
              insert into trigger_test values ('added fe male employee');
              insert into trigger_test values (new.first_name);
          ELSE
              insert into trigger_test values ('added other employee');
              insert into trigger_test values (new.first_name);
          END if;
      end $$
Delimiter ;
delete from employee
where emp_id = 109;

INSERT INTO employee VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

select * from employee;
select * from trigger_test;




-- you can drop your triggre by
-- drop trigger my_trigger;
