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