USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Jobs_SelectById]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Jobs_SelectById]
@Id int

as
/* 
Declare @Id int = 3
Execute dbo.Jobs_SelectById
@Id
*/

BEGIN

SELECT [Id]
      ,[Title]
      ,[Description]
      ,[Summary]
      ,[Pay]
      ,[Slug]
      ,[StatusId]
      ,[TechCompanyId]
      ,[SkillsId]
     
  FROM [dbo].[Jobs]
  Where Id = @Id
END


GO
