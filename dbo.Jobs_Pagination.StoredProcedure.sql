USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Jobs_Pagination]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Jobs_Pagination]
@PageIndex int
,@PageSize int

as
/*
Declare @PageIndex int = 0,
@PageSize int = 20

Execute [dbo].[Jobs_Pagination]
@PageIndex 
,@PageSize
*/

Begin

Declare @offset int = @PageIndex * @PageSize



SELECT [Id]
      ,[Title]
      ,[Description]
      ,[Summary]
      ,[Pay]
      ,[Slug]
      ,[StatusId]
      ,[TechCompanyId]
      ,[SkillsId]
	  , TotalCount = COUNT(1) OVER()
  FROM [dbo].[Jobs]
  ORDER BY Id

OFFSET @offSet Rows
Fetch Next @PageSize Rows ONLY

End 
GO
