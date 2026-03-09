create database mudule3_3; 
use mudule3_3;

create table Customer(
Customer_ID int primary key not null auto_increment,
Customer_Name varchar(50)
);

create table Account (
Account_ID int primary key not null auto_increment,
Customer_ID int unique,
Blance decimal(15,2) not null,
foreign key (Customer_ID) references Customer(Customer_ID)
);