create database module3_4;
use module3_4;

create table Teacher(
Teacher_ID int not null primary key auto_increment,
name varchar(50)
);

create table Student(
Student_ID int not null primary key auto_increment,
name varchar(50) not null,
Teacher_ID int ,
foreign key(Teacher_ID) references Teacher(Teacher_ID)
);