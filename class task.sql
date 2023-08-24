create database task;
use task;

create table student(
stdID int(10),
student_name varchar(10)
);

insert into student
value(1001,'mary'),(1002,'jane'),(1003,'daniel'),(1004,'jack'),(1005,'harold');
select*from student;

create table course(
courseID int(10),
course_name varchar(10),
studentid int(10)
);

insert into course
value(5001,'PHP','1004'),(5002,'JAVA',1001),(5003,'ASP.NET',1001),(5004,'RUBY',1002);
select*From course;


create table teacher(
teacherID int(10),
teacher_name varchar(10),
courseID int(10)
);

insert into teacher
value(3001,'jill',5003),(3002,'Greul',5002),(3003,'jemkins',5001),(3004,'polo',5004);
select*from teacher;

alter table student add primary key(stdid);


select * from student as s inner join course as c on s.stdid=c.studentid inner join teacher as t on c.courseid=t.courseid where c.course_name='ASP.NET';

select * from student as s cross join course as c; 

select *from student as s left join course as c on s.stdid=c.studentid;
select *from student as s right join course as c on s.stdid=c.studentid;

select*from student as s inner join course as c  on s.stdid=c.studentid inner join teacher as t on c.courseid=t.courseid;
