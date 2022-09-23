USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectAll]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_SelectAll]

as
/*
Execute dbo.Users_SelectAll
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

END
GO
