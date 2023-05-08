USE girrafe;
drop table student;
create table student (
student_id int primary key,
name varchar(20),
major varchar(20)
);

insert into student value (1, 'Jack', 'biology');
insert into student value (2, 'Kate', 'sociology');
insert into student value (3, 'Claire', 'biology');
insert into student value (4, 'Mike', 'chemistry');
insert into student value (5, 'Todd', 'computer science');



#select student.major, student.name
select * 
from student
order by student.major DESC; # defult accesnding (ASC) use DESC to do it DESCending!


select * 
from student
order by student.major DESC, student.student_id DESC; # defult accesnding (ASC) use DESC to do it DESCending!

#UPDATE  student
#SET major = 'undecided', name = 'J. Doe';
#select * from student;

#delete from student
#Where student_id = 4;
#select * from student;

#describe student;
#describe table student;
