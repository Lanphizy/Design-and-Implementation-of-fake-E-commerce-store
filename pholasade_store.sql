
/*
Case Study: Design and Implementation of Pholasade-store
Author:Lanre Moshood
Date: 26th February, 2024
*/

-- Create a Database
DROP DATABASE IF EXISTS sade_db;

CREATE DATABASE sade_db;


-- specify the database to use
use sade_db;

-- Create tables
CREATE TABLE customers (
   customer_id int auto_increment primary key,
   name varchar(50) not null,
   gender enum('M','F'),
   email varchar(150) unique not null,
   address text not null
);

CREATE TABLE orders (
    order_id int auto_increment primary key,
    customer_id int not null,
    order_date date not null,
    total_amount float not null
);
    
CREATE TABLE order_details (
	order_detail_id int auto_increment primary key,
	order_id int not null,
	product_id int not null,
    quantity int not null,
    order_price float not null
);
    
CREATE TABLE products (
    product_id int auto_increment primary key,
    name varchar(50) not null,
    description text,
    price float not null,
    stock_quantity int
);

-- Alter tables to add foreign key
ALTER TABLE orders
ADD FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

ALTER TABLE order_details
ADD FOREIGN KEY (order_id) REFERENCES orders (order_id);

ALTER TABLE order_details
ADD FOREIGN KEY (product_id) REFERENCES products (product_id);






    
