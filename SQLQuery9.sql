
Create table sp_data (id int not null,
					  Name varchar(50)not null,
					  Age int,
					  Email varchar(200)not null,
					  Address varchar(300)not null)

GO
create Proc InsertEmployees
(@Id int,
@Name varchar (50),
@Age int,
@Email varchar(200),
@Address varchar(300))
As
BEGIN
insert into sp_data values (@Id,@Name,@Age,@Email,@Address)
END

exec InsertEmployees
	 @Id = 1, @Name = 'John Doe', @Age = 30,@Email ='john.doe@example.com',@Address = '123 Main st';
exec InsertEmployees
	 @Id = 2, @Name = 'Jane Smith', @Age = 25,@Email ='jane.smith@example.com',@Address = '456 Elm st';
exec InsertEmployees
	 @Id = 3, @Name = 'Michael Johnson', @Age = 35,@Email ='michael.johnson@example.com',@Address = '789 oak st';
exec InsertEmployees
	 @Id = 4, @Name = 'Emly Brown', @Age = 28,@Email ='emly.brown@example.com',@Address = '1011 pine st';
exec InsertEmployees
	 @Id = 5, @Name = 'David Wilson', @Age = 32,@Email ='david.wilson@example.com',@Address = '1213m maple st';


	 select * from sp_data

	 