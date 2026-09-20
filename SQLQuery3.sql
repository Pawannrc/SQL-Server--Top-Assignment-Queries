
use AdventureWorks2019;

select *from Production.ProductSubcategory;
select*from Production.ProductCategory;

select pc.ProductCategoryID,pc.Name as CategoryName,
ps.ProductCategoryID as Productsubcategory,ps.Name as CategoryName 
from Production.ProductCategory as pc 
inner join Production.ProductSubcategory as ps
on pc.ProductCategoryID=ps.ProductCategoryID
