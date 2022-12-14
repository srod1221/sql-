USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Pagination]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

   CREATE PROC [dbo].[Friends_Pagination]  @PageIndex int 
                                             ,@PageSize int


AS
/*
Declare @PageIndex int = 0,
@PageSize int = 20

Execute [dbo].[Friends_Pagination]
@PageIndex 
,@PageSize 
*/
BEGIN



   Declare @offset int = @PageIndex * @PageSize

        SELECT   Id,
		 Title,
		 Bio,
		 Summary,
		 Headline,
		 Slug,
		 StatusId,
		 PrimaryImageUrl,
		 DateCreated,
		 DateModified,
		 UserId

		
                , TotalCount = COUNT(1) OVER() -- this the quick way of doing the count. (see below)
        FROM    dbo.Friends 
        ORDER BY Id

	OFFSET @offSet Rows
	Fetch Next @PageSize  Rows ONLY

END
GO
