USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Pagination]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

   CREATE PROC [dbo].[Users_Pagination]   @PageIndex int = 0 
                                             ,@PageSize int = 10


AS

BEGIN

   Declare @offset int = @PageIndex * @PageSize

        SELECT   Id,
		 FirstName,
		 LastName,
		 Email,
		 AvatarUrl,
		 Password,
		 TenantId
                , TotalCount = COUNT(1) OVER() -- this the quick way of doing the count. (see below)
        FROM    dbo.Users 
        ORDER BY Id

	OFFSET @offSet Rows
	Fetch Next @PageSize Rows ONLY

END
GO
