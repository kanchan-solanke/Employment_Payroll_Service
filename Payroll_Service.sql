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

>
use payroll_Service;
select * from employee_payroll;

>
insert into employee_payroll
values(4,'Bill','40000','01-01-2018');
Select salary from employee_payroll
where name='Bill';
select start_date from employee_payroll
where start_date between cast('01-01-2018' As date)  and date(NOW());

>
use payroll_Service;
alter table employee_payroll add gender varchar(10) after name;
update employee_payroll set gender  = 'M' where name='Raj';
select * from employee_payroll;

>
use payroll_Service;
select sum(salary)
from employee_payroll
where gender ='F' group by gender;
select avg(salary)
from employee_payroll
where gender ='F' group by gender;
select min(salary)
from employee_payroll
where gender ='F' group by gender;
select count(salary)
from employee_payroll
where gender ='F' group by gender;
select max(salary)
from employee_payroll
where gender ='F' group by gender;
select * from employee_payroll;

>
alter table employee_payroll add phone_number varchar(50) after name;
alter table employee_payroll add address varchar(50) after phone_number;
alter table employee_payroll add Department varchar(50) after address;
describe employee_payroll;
select * from employee_payroll;