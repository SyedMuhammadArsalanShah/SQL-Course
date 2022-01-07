CREATE DATABASE ABC
USE ABC 
CREATE TABLE ABCTutorial(
Id int identity(1,1) primary key not null,
Name varchar(20)
)
--Describe the table
sp_help 'dbo.ABCTutorial'




CREATE PROCEDURE select_all_data
AS
SELECT * FROM ABCTutorial
GO;

EXEC select_all_data

CREATE PROCEDURE inserted
@Name varchar(30)
AS
INSERT INTO ABCTutorial VALUES( @Name)
GO

EXEC inserted @Name = 'Misbah'
EXEC inserted @Name = 'Laiba'
EXEC inserted @Name = 'Harryson'
EXEC inserted @Name = 'Anas'