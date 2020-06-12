 /*
 create database Car_Rental_System
 use Car_Rental_System

create table Agency
(
Agency_Name varchar(99) not null,
Agency_Location varchar(99) not null,
Agency_ID int not null,
primary key(Agency_ID)

)

 create table Customer
 (
 customer_Name varchar(99) not null,
 customer_Phone int not null,
 Customer_ID int  not null,
 Agency_id int,
 primary key(customer_id),
 foreign key (Agency_id) references Agency (Agency_ID)
 
 )
 
 create table Car_Class
 (
  Car_Class_ID int,
  Car_Class_Name varchar(99) not null,
  primary key (Car_Class_ID)
 )


 create table Car
 (

 Car_ID int not null,
 Car_Class_id int not null,
 Car_Rental_id int not null
 primary key (Car_ID),
 foreign key (Car_Class_id) references Car_Class (Car_Class_ID),
 
 )
 */
 /*
 use Car_Rental_System
 create table Car_Rental
 (
 Price int not null,
 Car_Rental_ID int not null,
 Customer_id int not null,
 Car_id int not null,
 Agency_id int not null,
 Rental_date date not null,
 primary key (Car_Rental_ID),
 foreign key (Customer_id) references Customer (Customer_ID),
 foreign key (Agency_id) references Agency (Agency_ID),
 foreign key (Car_id) references Car (Car_ID)
 )
 */
 
 use Car_Rental_System;
 /*
 insert into Car_Class (Car_Class_ID,Car_Class_Name)  values(1,'Toyota');
 insert into Car_Class (Car_Class_ID,Car_Class_Name)  values(2,'Hondi');
 insert into Car_Class (Car_Class_ID,Car_Class_Name)  values(3,'kia');
 insert into Customer values ('Ali',01245896312,1,1);
 insert into Customer values ('Ahmed',01145896312,2,1);
 insert into Customer values ('Ayman',01545896312,3,2);
 insert into Agency values ('Fizzer','Roushdi',1);
 insert into Agency values ('Amon','Soumoha',2);
 insert into Car values (1,1,1);
 insert into Car values (2,1,1);
 insert into Car values (3,2,2);
 insert into Car values (4,2,2);
 insert into Car values (5,3,2);
 insert into Car values (6,3,2);
*/
/*
insert into Car_Rental values (100,1,1,1,1,'2020-08-01');
insert into Car_Rental values (100,2,1,1,1,'2020-09-03');
insert into Car_Rental values (200,3,2,1,1,'2020-10-04');
insert into Car_Rental values (300,4,2,1,1,'2020-11-09');
insert into Car_Rental values (400,5,3,1,1,'2020-12-10');
*/

/*
use Car_Rental_System
select *from Agency;
select *from Car_Class;
select *from Car


delete from Agency where Agency_ID = 1;
update Car_Rental
set Rental_date='2020-05-05'
where Car_Rental_ID=1;

select count(Customer_ID) from Customer;

select *from Customer where Customer_ID=1;

select customer_Name,customer_Phone from Customer 
select * from Agency where Agency_Name like 'A%';

select sum(price) from Car_Rental where Car_id =1

select Agency_Location from Agency where Agency_Name like 'Fiz%';

select min(price) from Car_Rental where Car_id =2

select AVG(price) from Car_Rental ;

select Top 5 price from Car_Rental  


select Top 50 percent *from Customer;


SELECT Car_id,price  FROM Car_Rental
ORDER BY Car_Rental_ID  


SELECT Rental_date  FROM Car_Rental
ORDER BY Car_Rental_ID DESC 

/*
 use Car_Rental_System
 select  a.Rental_date, a.Price, a.Customer_id
 from Car_Rental a, Car_Rental b
 where a.Price > b.Price;
*/			 


select *from Car_Class where Car_Class_Name='kia' and Car_Class_ID =3;

    select customer_Phone  from Customer where Customer_ID is not null ;

select Customer_id from Car_Rental where Car_id =1; 


select Car_Class_Name from Car_Class where not Car_Class_Name = 'Kia'; 

select Car_Class_Name from Car_Class where  Car_Class_Name = 'Kia' or Car_Class_Name = 'Toyota' ; 

SELECT customer_Name,COUNT(*) 
FROM Customer
GROUB BY customer_Name;

select customer_Name, customer_phone from Customer where Customer_ID in 
(
select Car_Rental_ID  from Car_Rental where Customer.Customer_ID = Car_Rental.Customer_id

)


select price,customer_Name
from Customer
full join Car_Rental on  Car_Rental.Customer_id= Customer.Customer_ID;

select Customer.customer_Name,Customer.customer_Phone,Car_Rental.Car_Rental_ID
from Customer
inner join Car_Rental on  Car_Rental.Customer_id = Customer.Customer_ID;

select Car_Rental.Car_Rental_ID, Car_Rental.Price, customer_Name
from Car_Rental
Left join Customer on  Car_Rental.Customer_id = Customer.Customer_ID;


   select Car_Rental.Car_Rental_ID,Customer.customer_Name,Customer.Customer_ID
             from Car_Rental
             right join Customer on  Car_Rental.Customer_id = Customer.Customer_ID;
*/

           

/*
select day(Rental_date) from Car_Rental where Car_Rental_ID =1 ;
select year(Rental_date) from Car_Rental where Car_Rental_ID =1 ;
select current_timestamp;
select datename(year, Rental_date) from Car_Rental where Car_Rental_ID =2 ;
select isnumeric(Price) from Car_Rental; 
*/