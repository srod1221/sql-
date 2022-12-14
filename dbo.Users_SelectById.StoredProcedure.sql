USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectById]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_SelectById]
@Id int

as
/*

Declare @Id int = 2
Execute dbo.Users_SelectById @Id
*/


BEGIN

SELECT [Id]
      ,[FirstName]
      ,[LastName]
      ,[Email]
      ,[AvatarUrl]
      
      ,[TenantId]
      ,[DateCreated]
      ,[DateModified]
  FROM [dbo].[Users]
  Where Id = @Id

END
GO
