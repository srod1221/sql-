USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectAll]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_SelectAll]

as
/*  
Execute dbo.Friends_SelectAll
*/


BEGIN

SELECT [Id]
      ,[Title]
      ,[Bio]
      ,[Summary]
      ,[Headline]
      ,[Slug]
      ,[StatusId]
      ,[PrimaryImageUrl]
      ,[DateCreated]
      ,[DateModified]
      ,[UserId]
  FROM [dbo].[Friends]

END
GO
