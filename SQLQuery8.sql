
use AdventureWorks2019

select * from person.Address

go
create proc getaddresscity
	@city varchar(50)
As 
BEGIN
select AddressId,AddressLine1,City,PostalCode, ModifiedDate from Person.Address where City=@city
END

exec getaddresscity @city='Bothell';
exec getaddresscity @city='Monroe';
exec getaddresscity @city='ottawa';