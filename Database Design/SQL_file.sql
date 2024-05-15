DROP DATABASE IF EXISTS raksha_pipes;
CREATE DATABASE raksha_pipes;
USE raksha_pipes;

CREATE TABLE Customers (
    customer_id bigint PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    country varchar(255)
);

load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers.csv'
into table customers fields terminated by ','
IGNORE 1 lines;

select * from customers ;

CREATE TABLE orderdetails  (
OrderDetailID int PRIMARY KEY,
OrderID int,
ProductID int,
Quantity int,
SupplierID int
);

load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orderdetails.csv'
into table orderdetails fields terminated by ','
IGNORE 1 lines;

CREATE TABLE orders (
    OrderID int primary key,
    CustomerID int,
    PaymentID int,
    ShipperID int,
    Total_order_amount int
);
load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv'
into table orders fields terminated by ','
IGNORE 1 lines;

CREATE TABLE payments (
    PaymentID int PRIMARY KEY,
    PaymentType varchar(255),
    Allowed varchar(10)
);

load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/payments.csv'
into table payments fields terminated by ','
IGNORE 1 lines;

CREATE TABLE products (
    product_id int PRIMARY KEY,
    supplier_id int,
    product_name varchar(255),
    category varchar(255),
    unit_price decimal(10, 2)
);

load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products.csv'
into table products fields terminated by ','
IGNORE 1 lines;

CREATE TABLE shipper (
    ShipperID int PRIMARY KEY,
    CompanyName varchar(255),
    Email varchar(255)
);
load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/shipper.csv'
into table shipper fields terminated by ','
IGNORE 1 lines;

CREATE TABLE suppliers (
    SupplierID int PRIMARY KEY,
    CompanyName varchar(255),
    City varchar(255),
    State varchar(255),
    Country varchar(255),
    Email varchar(255)
);

load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/suppliers.csv'
into table suppliers fields terminated by ','
IGNORE 1 lines;

CREATE TABLE category  (
    CategoryID int PRIMARY KEY,
    CategoryName varchar(255),
    Active varchar(100)
);
load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/category.csv'
into table category fields terminated by ','
IGNORE 1 lines;

