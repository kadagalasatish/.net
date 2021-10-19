create table Loans
(Loanapp int primary key,
ApplicantName varchar(20),
Amt float,
loanType varchar(20)not null)
select * from Loans



create table BankProducts
(Productid numeric(4) identity(1,1) primary key,
Productname varchar(20) default 'New Product' not null,
interstRate numeric(3,1))


create table BranchDetails
(BranchID int primary key,
BranchName varchar(20),
city varchar(20))


alter table Customer
add Branchcode int foreign key references BranchDetails(BranchID)



create table Student
(rollno int,
name varchar(20),
city varchar(20),
constraint pk_stud primary key(rollno,name))


insert into Student values(1,'satish','pune')
insert into Student values(2,'Hari','Mumbai')
insert into Student values(1,'hari','pune')

select * from Student

alter table Student
add constraint notallowed_cities check(city not in ('Delhi'))

alter table Student
add age int constraint ageCons check(age>6 and age<20)