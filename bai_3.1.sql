create database module3;

use module3;

create table tac_gia(
id_tac_gia int primary key not null auto_increment,
name varchar(50) not null
);

create table sach(
id_sach int primary key not null auto_increment,
ten_sach varchar(50) not null,
gia_sach double,
id_tac_gia int,
foreign key (id_tac_gia) references tac_gia(id_tac_gia)
);

create table nhan_vien(
id_nhan_vien int primary key not null auto_increment,
ten_nhan_vien varchar(50) not null,
dia_chi varchar(50) not null
);

create table nhan_vien_ban_sach(
id_nhan_vien int,
id_sach int,
primary key (id_nhan_vien, id_sach),
foreign key (id_nhan_vien) references nhan_vien(id_nhan_vien),
foreign key (id_sach) references sach(id_sach)
);
