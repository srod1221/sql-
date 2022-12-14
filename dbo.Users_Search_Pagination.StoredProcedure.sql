USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Search_Pagination]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Users_Search_Pagination]
@PageIndex int = 0
,@PageSize int =10 
,@Query nvarchar(100) = [FirstName]
as

BEGIN
Declare @offset int = @PageIndex * @PageSize

/*
DECLARE @Query nvarchar(100) = 'Kayla' */

SELECT [Id]
      ,[FirstName]
	  ,[LastName]
	  ,[Email]
	  ,[AvatarUrl]
	  ,[Password]
	  ,[TenantId]
	  , TotalCount = COUNT(1) OVER()
      
  FROM [dbo].[Users]

  WHERE (FirstName LIKE '%' + @Query + '%')
  ORDER BY Id

	OFFSET @offSet Rows
	Fetch Next @PageSize Rows ONLY


  END
GO
