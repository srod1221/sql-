USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[TechCompanies_Delete]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TechCompanies_Delete]
@Id int
as
/* 
Select *
From dbo.TechCompanies


Declare @Id int = 5
Execute [dbo].[TechCompanies_Delete] @Id

Select *
From dbo.TechCompanies

*/

Begin
DELETE FROM [dbo].[TechCompanies]
WHERE Id = @Id
End 


GO
