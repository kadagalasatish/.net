use northwind
go


select * from Categories
select * from products

select * from orders

select * from [order details]

select employeeid,lastname,firstname,title from Employees



select employeeid,lastname,firstname,title from Employees
where employeeid=5


select companyname
From CUSTOMERS WHERE companyname like '%Restaurant%'



select productid,productname,supplierid,unitprice
from products where (productname like 'T%' or productid = 46)
and (unitprice > 16.00)


select productname,unitprice
from products where UnitPrice between 10 and 20



select * from customerswhere CompanyName like 'g%'select * from customerswhere CustomerID like 'G%L'select * from customerswhere customerid like '_____'select * from Customerswhere CustomerID like  'A___I'


select orderid,productid,unitprice,quantity,discount,(unitprice*quantity) as amt,((unitprice*quantity) * (discount)) discountCalculated,(unitprice*quantity) - ((unitprice*quantity) * (discount)) as AmtAfterDiscountfrom [Order Details]