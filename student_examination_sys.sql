drop database if exists student_examination_sys;
create database student_examination_sys;
use student_examination_sys;
create table student(
  id varchar(255) primary key ,
  name varchar(255) not null,
  age int not null,
  sex varchar (255) not null
);
insert into student values ('001','张三',18,'男');
insert into student values ('002','李四',20,'女');

create table subject(
  id varchar(255) primary key,
  subject varchar(255) not null,
  teacher varchar(255) not null,
  description varchar (255) not null
);
insert into subject values ('1001','语文','王老师','本次考试比较简单');
insert into subject values ('1002','数学','刘老师','本次考试比较难');

create table score(
  id int auto_increment primary key,
  student_id varchar(255) not null,
  subject_id varchar(255) not null,
  score float not null
);
insert into score(student_id,subject_id,score) value ('001','1001',80);
insert into score(student_id,subject_id,score) value ('002','1002',60);
insert into score(student_id,subject_id,score) value ('001','1001',70);
insert into score(student_id,subject_id,score) value ('002','1002',60.5);
