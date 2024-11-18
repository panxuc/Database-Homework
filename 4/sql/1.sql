drop table supply;
drop table apply;
drop table supplyapply;
drop table supplier;
drop table part;
drop table project;

create table supplier(
supplierno int primary key,
suppliername varchar(20) not null,
supplieraddress char(20) not null
);

create table part(
partno int primary key,
partname varchar(20) not null,
partcolor char(20) not null
);

create table project(
projectno int primary key,
projectname varchar(20) not null,
projectaddress char(20) not null
);

create table supply(
supplierno int not null,
partno int not null,
primary key (supplierno, partno)
);

create table apply(
partno int not null,
projectno int not null,
primary key (partno, projectno)
);

create table supplyapply(
supplierno int not null,
partno int not null,
projectno int not null,
primary key (supplierno, partno, projectno)
);