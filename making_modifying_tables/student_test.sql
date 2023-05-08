USE girrafe;
drop table student;
create table student (
student_id int primary key,
name varchar(20),
major varchar(20)
);

insert into student value (1, 'Jack', 'biology');
insert into student value (2, 'Kate', 'rorology');
insert into student (student_id, major) value (3,'methodo africa');
insert into student value (4, 'Mike', 'physics');
insert into student value (5, 'Todd', 'computer science');



select * from student;



describe student;

describe table student;
