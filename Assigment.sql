create table SalesPeople (
Snum varchar(10) Primary Key,
Sname varchar(255) unique,
City varchar(255),
Comm varchar(255)
);

select * from salespeople;

insert into salespeople values(1001, "Peel", "London", 12);
insert into salespeople values(1002, "Serres", "Sanjose", 13);
insert into salespeople values(1004, "Motika", "London", 11);
insert into salespeople values(1007, "Rifkin", "Barcelona", 15);
insert into salespeople values(1003, "Axelrod", "Newyork", 10);

create table Customers(
Cnum varchar(255) primary key,
Cname varchar(255),
City varchar(255) not null,
Snum varchar(255),
foreign key(Snum) references salespeople(Snum)
);

select * from Customers;

insert into Customers values(2001, "Hoffman", "London", 1001);
insert into Customers values(2002, "Giovanni", "Rome", 1003);
insert into Customers values(2003, "Liu", "Sanjose", 1002);
insert into Customers values(2004, "Grass", "Berlin", 1002);
insert into Customers values(2006, "Clemend", "London", 1001);
insert into Customers values(2008, "Cisneros", "Sanjose", 1007);
insert into Customers values(2007, "Pereira", "Rome", 1004);


create table Orders(
Onum varchar(255) primary key,
Amt varchar(255),
Odate varchar(255),
Cnum varchar(255),
foreign key(Cnum) references Customers(Cnum),
Snum varchar(255),
foreign key(Snum) references salespeople(Snum)
);

insert into Orders values(3001, "18.69", "3-10-1990" , 2008, 1007);
insert into Orders values(3003, "767.179", "3-10-1990" , 2001, 1001);
insert into Orders values(3002, "1900.10", "3-10-1990" , 2007, 1004);
insert into Orders values(3005, "5160.45", "3-10-1990" , 2003, 1002);
insert into Orders values(3006, "1098.16", "3-10-1990" , 2008, 1007);
insert into Orders values(3009, "1713.23", "4-10-1990" , 2002, 1003);
insert into Orders values(3007, "75.75", "4-10-1990" , 2004, 1002);
insert into Orders values(3008, "4273.00", "5-10-1990" , 2006, 1001);
insert into Orders values(3010, "1309.95", "6-10-1990" , 2004, 1002);
insert into Orders values(3011, "9891.88", "6-10-1990" , 2006, 1001);

select * from Orders;

select count(*) from salespeople where Sname Like "a%";

select * from Orders where Amt > 2000;

select sum(tbl.Citycount) From (select count(*) as Citycount from salespeople where city="Newyork" UNION ALL select count(*) as Citycount from customers where city="Newyork")tbl ;

select *  from salespeople where city = "London" or city = "paris";

select Onum, Odate from Orders;
