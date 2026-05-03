
create database keynotes;
use keynotes; 





create table products(
	prroduct_id int primary key,
    product_name varchar(30),
    product_price float
);
 alter table products
 rename column prroduct_id to product_id;
 
select * from  products;

create table customers(
	customer_id int primary key,
    customer_name varchar(30),
    city varchar(20)
);

select * from customers;

alter table customers 
rename column customer_namer to customer_name;
    
create table orders(
	order_id int primary key,
    quantity int,
    product_id int,
	cust_id int,
    foreign key(product_id) references products(product_id),
	foreign key(cust_id) references customers(customer_id)
);
select * from orders;

insert into orders values
(1,3,101,201),
(2,2,101,202),
(3,5,102,202),
(4,6,103,203);

   
insert into customers values
(201,'rohit','delhi'),
(202,'sneha','delhi');
insert into customers values
(203,'dev','mumbai');

insert into products valuestomers 
(101,'monitor',3000),
(102,'ram',5500),
(103,'ssd',6280);







    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    