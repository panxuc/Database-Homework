drop table dept;
drop table stu;
drop table teacher;

create table dept(
deptno int primary key,
dname varchar(18) not null,
head char(10) not null);

create index idx_deptno on dept(deptno);

create table stu(
stno char(10) primary key,
name varchar(20) not null,
age int not null,
monit char(10) not null,
macr int not null,
micr int,
edate datetime not null,
deptno int not null);

create index idx_stuno on stu(stno);

create table teacher(
tno char(10) primary key,
name varchar(20) not null,
age int not null,
wdate datetime not null,
deptno int not null);

create index idx_tno on teacher(tno);