create database Workout;

use Workout;

create table Students (id int,name varchar(20),age int);

create table Employees(emp_id int,emp_name varchar(23),
salary int,department varchar(15));

create table products(product_id int,product_name varchar(20),
Price decimal(10,2));

create table  books (Book_id int, title varchar(20),Author varchar(30),
Published_year int);

create table orders(order_id int, customer_id int,
order_date varchar(15),total_amount int);
-----------------------
insert into students values (1,'John',20);

insert into employees values(101,'Alice',50000,'HR');

insert into products values(1,'Pen',10);

insert into books values(01,"SQL Basics","Tom Smith",2020);

insert into orders values(1001,201,'01-01-2024',1500);
--------------
select * from students;

select * from employees;

select * from  products;

select * from books;

select * from orders;
---------------------
update students set name="Johnny" where id = 1;

update  employees set salary=60000 where emp_id =101;

update  products set price=15 where product_id = 1;

update books set published_year=2021 where book_id=1;

update orders set total_amount=2000 where order_id=1001;
--------------------
alter table students add column (email varchar(30));

alter table employees rename column emp_id to employee_name;

alter table products add column (stock_quantity int);

alter table books modify column title varchar(150);

alter table employees drop column department;
-----------------------
drop table students;

drop  table employees;
----------
delete from students where id=1;

delete from employees where department="HR";
----------
truncate students;

select * from students;

select * from employees;
---------
create table users (username varchar(15)not null);

alter table employees modify column emp_name varchar(25) not null;
-----------------
create table accounts (account_number int unique);

alter table users add column (email varchar(30) unique);

alter table products add column product_code int unique;
-----------
create table customers (customer_id int primary key);

alter table orders modify column order_id int primary key; 

create table vehicles (registration_number int primary key);
------------
alter table products modify column price int check ( price > 0);

alter table users add column age int check (age >= 18);

alter table orders add column Quantity int check (Quantity >=1);

alter table employees modify column salary int check (salary >=10000);
------------
alter table users  add column status varchar(10) default 'Active';

create table posts (created_at varchar(20) default 'currentdate');

alter table products modify column stock_quantity int default '0';

alter table users add column role varchar(10) default 'User';
--------------
select * from employees where department ="HR" and salary > 50000;

alter table students add column marks varchar(10);
select * from students where marks='Grade A' or marks > 90;

alter table orders add column status varchar(30);
alter table orders add column (amount decimal(10,2), pay_method varchar(20));
select * from orders where status ='Pending' and (amount > 1000 or pay_method ='UPI');

select * from orders where  not pay_method ='Credit card';

select * from products where not price between 100 and 500;
---------------
create table employe(
e_id int,
manager_id int,
e_name varchar(20),
c_dept varchar(30),
manager_name varchar(20));

create table orderr(
e_id int,
o_id int,
product varchar(40));
alter table orderr add column orders varchar(20);

select employe.c_dept,employe.e_name,orderr.e_id
from employe inner join orderr
on employe.e_id = orderr.e_id;

select employe.e_id,orderr.product
from employe left join orderr
on employe.e_id = orderr.e_id;

select employe.e_name,orderr.product,orderr.o_id
from employe right join orderr
on employe.e_id = orderr.e_id;

alter table students add column class varchar(20);

create table library (id int,name varchar(30));
rename table library to library_users;

select s1.class,s1.id,l1.id
from students as s1 left join library_users as l1
on s1.name= l1.name
union all
select s1.class,s1.id,l1.id
from students as s1 right join library_users as l1
on s1.name= l1.name;
























