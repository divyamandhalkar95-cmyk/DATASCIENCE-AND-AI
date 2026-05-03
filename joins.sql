use my_db;

create table ordeers(
	order_id int primary key,
    payment_method varchar(30),
    price float
);

alter table ordeers
change price amount_received float;
alter table ordeers
add product_id int;
rename table ordeers to orders;
insert into orders values
(101,'cash',700,1),
(102,'online',360,2),
(103,'card',500,2),
(104,'cash',700,3);
select * from orders; 
create table products(
	product_id int primary key,
    product_name varchar(30),
    price float
);
insert into products value(1,'keyboard',300),(2,'cpu',700); 
insert into products value(4,'monitor',650);
select * from products; 
--inner join , will reflect the records if product id of both tables are mathing

select
	*
from orders o
inner join products p
on o.product_id = p.product_id;

select 
	o.order_id,
    o.amount_received,
    p.product_name,
    p.price
from orders o
inner join products p
on o.product_id = p.product_id; 

-- left join, it will reflect all records from the left table and common records of right table

select 
	o.order_id,
    o.amount_received,
    p.product_name,
    p.price
from orders o
left join products p
on o.product_id = p.product_id; 

-- right join , it will reflectball the record from right table andv common records of left 

select 
	o.order_id,
    o.amount_received,
    p.product_name,
    p.price
from orders o
right join products p
on o.product_id = p.product_id; 

-- full join, combination of left and right
select 
	o.order_id,
    o.amount_received,
    p.product_name,
    p.price
from orders o
left join products p
on o.product_id = p.product_id;

UNION

select 
	o.order_id,
    o.amount_received,
    p.product_name,
    p.price
from orders o
right join products p
on o.product_id = p.product_id; 

-- cross join , its product of recrds

select 
	o.order_id,
    o.amount_received,
    p.product_name,
    p.price
from orders o
cross join products p;

--self join , 
























