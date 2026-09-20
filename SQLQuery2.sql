use AdventureWorks2019

select * from Person.Person
select * from humanresources.Employee
select *from humanresources.employeedepartmenthistory

select t1.BusinessEntityID,t2.JobTitle,t1.FirstName,
t1.LastName,t3.StartDate
from person.person as t1
inner join humanresources.employee as t2 on t1.BusinessEntityID=t2.BusinessEntityID
inner join humanresources.employeedepartmenthistory as t3
on t2.BusinessEntityID=t3.BusinessEntityID