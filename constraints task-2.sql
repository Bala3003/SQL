use practice;

create table users(
user_id int unique auto_increment primary key,
username varchar(30) unique not null,
email_address varchar(30) unique not null,
password varchar(20) not null,
age int check(age >= 13),
location varchar(20) default 'USA' );

insert into  users(user_id,username,email_address,password,age,location) values
(101,'Bala','bala80@gmail.com',3031,21,'Chennai');

select * from users;

insert into  users(username,email_address,password,age) values
('Gopi','gopi@gmail.com',4041,22);

insert into  users(username,email_address,password,age) values
('Naveen','naveen@gmail.com',5051,25);

insert into  users(username,email_address,password,age,location) values
('Hari','hari05@gmail.com',5051,34,'Malaysia');


