USE girrafe;
drop table student;
create table student (
student_id int primary key,
name varchar(20),
major varchar(20)
);

insert into student value (1, 'Jack', 'biology');
insert into student value (2, 'Kate', 'rorology');
insert into student value (3, 'Claire', 'biology');
insert into student value (4, 'Mike', 'physics');
insert into student value (5, 'Todd', 'computer science');



select * from student;



UPDATE  student
SET major = 'BioM'
WHERE major = 'biology';

select * from student;


UPDATE  student
SET major = 'CSIOLOGYYYY'
WHERE name = 'kate';

select * from student;

UPDATE  student
SET major = 'Biophysics'
WHERE major = 'BioM' OR major = 'physics' ;

select * from student;


UPDATE  student
SET major = 'undecided', name = 'J. Doe'
WHERE student_id = 1 ;

select * from student;

UPDATE  student
SET major = 'undecided', name = 'J. Doe';

select * from student;


delete from student
Where student_id = 4;

select * from student;




describe student;

describe table student;
