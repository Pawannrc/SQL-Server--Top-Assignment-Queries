
use AdventureWorks2019

select *from person.Address

select AddressLine1,AddressLine2,City
from person.Address where city like 'M%' or City like 'N%'