use personal;

create table customers(
c_id int,
c_name varchar(30),
City varchar(20));

create table orders(
order_id int,
C_id int,
product varchar(25));

insert into customers values(1,'Alice','NewYork'),
(2,'Bob','Chicago'),
(3,'Charlie','Miami');

insert into orders values(101,1,'Laptop'),
(102,1,'Mouse'),
(103,2,'Keyboard'),
(104,4,'Monitor');

select * from customers; 

select * from orders; 

select customers.c_ID, customers.c_name, orders.Product
 from customers inner join orders 
 on customers.c_id = orders.c_id;
 
 select customers.c_ID, customers.c_name, orders.Product
 from customers left join orders 
 on customers.c_id = orders.c_id;
 
 select customers.c_ID, customers.c_name, orders.Product
 from customers right join orders 
 on customers.c_id = orders.c_id;
 
 
 
 
 