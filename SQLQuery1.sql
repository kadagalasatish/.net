create Database ShoppingDb
go


use ShoppingDb
go
sp_help Products
create table Products
(
ProductId int primary key,
prodName varchar(10),
Price float,
Quantity int
)

insert into Categories values(1,'Beverages')
insert into Categories values(2,'Electronics')
insert into Categories values(3,'Vehicles')
insert into Categories values(4,'Home')
insert into Categories values(5,'Sports')
insert into Categories values(6,'Cooking')

select * from Categories