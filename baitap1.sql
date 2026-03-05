CREATE database store_management;
use store_management;
create table product(
id int(5) primary key auto_increment,
name varchar(50) not null,
description varchar(50),
price int,
stock int
);

insert into product (id,name,description,price,stock) values ('4','may say toc','khong co','200.000','2');
select * from product;

insert into product values ('5','may giat','con hang', '100.000','6');
select * from product;
insert into product (id,name) values ('6','may say gao');

select * from product;
select id,name,price from product;
select id,name,price from product where price > '10.000.000';


set sql_safe_updates = 0;

update product set name = 'may ui';
select * from product;
update product set name = 'may say' where id = '1';
select * from product;

alter table product add Barcode int;
alter table product add Warranty varchar(20) default '6 Thang';
