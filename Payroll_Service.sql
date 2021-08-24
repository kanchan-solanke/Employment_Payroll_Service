>  create database payroll_Service;
   show databases;
   use payroll_Service;

>
use payroll_Service;
create Table employee_payroll(id int auto_increment, name varchar(50), salary varchar(50),
 start_date varchar(30),primary key (id));

>
insert into employee_payroll
values(1,'Raj', '10000','21-03-2020'),
(2,'Meher','20000','2-05-2020'),
(3,'Rahul','30000','6-07-2021');
