USE cdc_dev  

CREATE Table cdc_fake_records
(
   Id nvarchar(50) primary key,
   TeamId nvarchar(50),
   TeamCode nvarchar(50),
   FirstName nvarchar(50),
   LastName nvarchar(50),
   Address1 nvarchar(50),
   Address2 nvarchar(50),
   city nvarchar(50),
   State nvarchar(50),
   Pin nvarchar(50)
)
;

Declare @Id int
Set @Id = 1

While @Id <= 1500
Begin 
   Insert Into cdc_fake_records values 
   (

   NEWID(),
   'TeamId - ' + CAST(@Id as nvarchar(10)),
   'TeamCode - ' + CAST(@Id as nvarchar(10)),
   'FirstName - ' + CAST(@Id as nvarchar(10)),
   'LastName  - ' + CAST(@Id as nvarchar(10)),
   'Address1 - ' + CAST(@Id as nvarchar(10)),
   'Address2 - ' + CAST(@Id as nvarchar(10)),
   'City - ' + CAST(@Id as nvarchar(10)),
   'State - ' + CAST(@Id as nvarchar(10)),
   '60000' + CAST(@Id as nvarchar(10))
   )
   Set @Id = @Id + 1
End
;




#Store Procedure


CREATE PROCEDURE cdc_fake_records_sp
AS
Declare @Id int
Set @Id = 1
While @Id <= 1500
Begin 
   Insert Into cdc_fake_records values 
   (
   NEWID(),
   'TeamId - ' + CAST(@Id as nvarchar(10)),
   'TeamCode - ' + CAST(@Id as nvarchar(10)),
   'FirstName - ' + CAST(@Id as nvarchar(10)),
   'LastName  - ' + CAST(@Id as nvarchar(10)),
   'Address1 - ' + CAST(@Id as nvarchar(10)),
   'Address2 - ' + CAST(@Id as nvarchar(10)),
   'City - ' + CAST(@Id as nvarchar(10)),
   'State - ' + CAST(@Id as nvarchar(10)),
   '60000' + CAST(@Id as nvarchar(10))
   )
   Set @Id = @Id + 1
End
GO
;

EXEC cdc_fake_records_sp;

