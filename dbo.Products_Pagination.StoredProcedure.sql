USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Products_Pagination]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/01/2022
-- Description:This table is to store the subscription product information. Carte is currently offering 2 subscription plans for the organization.
-- Code Reviewer:Alley Johnston

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Products_Pagination]
@PageIndex int,
@PageSize int

as
/*
Declare @PageIndex int = 0,
@PageSize int = 5

Execute [dbo].[Products_Pagination]
@PageIndex 
,@PageSize 
*/

Begin
Declare @offset int = @PageIndex * @PageSize

SELECT [Id]
      ,[Name]
      ,[Price]
      ,[Description]
      ,[Image]
	  ,[Duration]
	  ,TotalCount = COUNT(1) OVER()
  FROM [dbo].[Products]
  Order by [Name]

  OFFSET @offSet Rows
  Fetch Next @PageSize  Rows ONLY


End


GO
