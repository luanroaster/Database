create database module3_2;

use module3_2;


CREATE TABLE nguoi (
    id_nguoi INT PRIMARY KEY AUTO_INCREMENT,
    ten VARCHAR(255) NOT NULL
);

CREATE TABLE so_dien_thoai (
    id_so_dien_thoai INT PRIMARY KEY AUTO_INCREMENT,
    nguoi_id INT,
    so VARCHAR(15) NOT NULL,
    FOREIGN KEY (nguoi_id) REFERENCES nguoi(id_nguoi)
);

CREATE TABLE email (
    id_email INT PRIMARY KEY AUTO_INCREMENT,
    nguoi_id INT,
    dia_chi_email VARCHAR(255) NOT NULL,
    FOREIGN KEY (nguoi_id) REFERENCES nguoi(id_nguoi)
);
