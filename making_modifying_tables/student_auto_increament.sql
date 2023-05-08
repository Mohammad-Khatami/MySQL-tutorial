USE girrafe;
drop table student;
create table student (
student_id int AUTO_INCREMENT,
name varchar(20) DEFAULT 'JDoe',
major varchar(20) unique,
primary key(student_id)
);

insert into student (name, major) values ('Jack', 'biology');
insert into student (name, major) values ('kakw', 'bogy');
insert into student (name, major) values ('kate', 'bo55gy');
insert into student (name, major) values ('Jk', 'bziology');
insert into student (name, major) values ('g', 'bigology');
insert into student (name, major) values ('my', 'bionnnnlogy');

select * from student;



describe student;



describe table student;
