create database assign
create table Sales
(
SALESMAN_ID numeric(5),
NAME varchar(30),
CITY varchar(15),
COMMISION decimal(5,2)
)

insert into Sales values(5001,'James Hoog','New York', 0.15)
insert into Sales values(5002,'Nail Knite','Paris',0.13)
insert into Sales values(5005,'Pit Alex','London', 0.11)
insert into Sales values(5006,'Mc Lyon ','Paris',0.14)
insert into Sales values(5007,'Paul Adam','Rome', 0.13)
insert into Sales values(5003,'Lauson Hen','San Jose',0.12)

select * from Sales
select NAME,COMMISION from Sales
select  NAME,CITY  from Sales where CITY='Paris'
select count(*) as 'count' from Sales
select count(NAME) as 'no of sales',CITY from Sales group by CITY
select Sales.NAME,customer.cust_name,Sales.CITY from Sales inner join customer on Sales.SALESMAN_ID=customer.salesman_id
select Sales.NAME,Sales.COMMISION,customer.cust_name,customer.city from Sales left join customer on Sales.SALESMAN_ID=customer.salesman_id where COMMISION>0.12
select customer.cust_name,customer.city,Sales.NAME,Sales.COMMISION,Sales.CITY from Sales inner join customer on customer.salesman_id = Sales.SALESMAN_ID where COMMISION>0.12