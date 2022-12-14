USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Skills_InsertBatch]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Skills_InsertBatch]
@batchSkills dbo.Skills READONLY
/*has to do with not updating anything via the proc itself */

as
/*


Declare @newSkills dbo.Skills

Insert into @newSkills (Id,Name)
Values(0,'Test1')
Insert into @newSkills (Id, Name)
Values(0,'Test2')

Execute dbo.Skills_InsertBatch @newSkills

select *
From dbo.Skills

*/

BEGIN


Update dbo.Skills
	set Name = b.Name
From @batchSkills as b inner join dbo.Skills as s
		on s.Id = b.Id


insert into dbo.Skills (
						Name)

Select 
		b.Name
From @batchSkills as b 
Where Not Exists (Select 1
				from dbo.Skills as s
				where s.Id = b.Id OR
				 s.Name = b.Name
				)



END 
GO
