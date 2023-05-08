USE girrafe;
drop table student;
create table student (
student_id int primary key,
name varchar(20) DEFAULT 'JDoe',
major varchar(20) unique
);

insert into student value (1, 'Jack', 'biology');
insert into student value (2, 'Kate', 'rorology');
insert into student (student_id, major) value (3, 'rorolo');
insert into student value (5, 'Todd', 'computer science');

select * from student;



describe student;



describe table student;
