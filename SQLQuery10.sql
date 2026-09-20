
create table log_table (Id int Identity (1,1)primary key,
						Status varchar (100) );

go
Create Trigger attendence
on log_table
after update
as
begin
	insert into log_table(Status)
	values ('Table Update')
end

update log_table set Status='present';


select *from log_table
