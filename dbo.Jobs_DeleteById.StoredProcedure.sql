USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Jobs_DeleteById]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[Jobs_DeleteById]
@Id int 


as
/* 
Declare @Id int = 4

Select *
From dbo.Jobs

Execute dbo.Jobs_DeleteById @Id

Select *
From dbo.Jobs
*/

BEGIN

DELETE FROM [dbo].[Jobs]
      WHERE Id = @Id


END


GO
