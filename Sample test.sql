
use Co8060_13_9_20;

--!# querry 1

select *from SCContracts;
select *from SCContractDetails;
select *from ARCustomers;
select *from SCEquipments;


select t2.contractdetailid as ContractDetails,
t1.ContractNumber,t3.CustomerNumber from SCContracts as t1
inner join SCContractDetails as t2 on t1.ContractID=t2.ContractID
inner join ARCustomers as t3 on t1.CustomerID=t3.CustomerID
inner join SCEquipments as t4 on t2.EquipmentID=t4.EquipmentID

--!# querry 2

 select *from ICItems;
 select *from ICItemWarehouses;
 select *from ICWarehouses;

 select t1.item as Item_Name,t3.warehouse as Warehouse_Name,t2.OnHandQty
 from ICItems as t1
 inner join ICItemWarehouses as t2 on t1.ItemID=t2.ItemID
 inner join ICWarehouses as t3 on t2.WarehouseID=t3.WarehouseID


--!# querry 3

select *from ICItems;

select Item as Item_Name,OnHandQty from ICItems
order by OnHandQty desc;

--!# querry 4

 select *from ICItems;

 select Item , OnHandQty from icitems where OnHandQty >5;

 --!# querry 5
 
 create table log (Id int primary key,
				   Status varchar (50));

go
create procedure Put_Data
	@id int,
	@status varchar(50)
as
Begin
insert into log (Id, Status) values (@Id,@Status);
End;

exec Put_Data
@Id=1,
@status='present'

select *from log;

--!# querry 6

select *from ARCustomers
select *from ARCustomers where City  like 'b%' or City like 'i%';

--!# querry 7

select *from SOOrderDetails;

select Description, sum(quantity) as Total_Quantity
from SOOrderDetails 
group by Description;

--!# querry 8

select *from ARCustomers;

select customername from ARCustomers 
where CustomerName between 'k' and 'N';

--!# querry 9

 go
 Create trigger table_rename
 on database 
 for rename
 as 
 begin
	print 'Table Renamed'
 end;

 exec sp_rename 'dbo.websessions','dbo.websessions01';










































