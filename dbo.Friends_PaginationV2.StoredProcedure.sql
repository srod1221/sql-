USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_PaginationV2]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_PaginationV2]
@PageIndex int 
,@PageSize int 

as
/*
Declare @PageIndex int = 0,
@PageSize int = 10 

Execute [dbo].[Friends_PaginationV2]
@PageIndex 
,@PageSize 
*/

BEGIN



 Declare @offset int = @PageIndex * @PageSize

 Select 
  f.Id
,i.Url as ImageUrl
,i.Id as ImageId
,i.TypeId
,f.Title
,f.Bio
,f.Summary
,f.Headline
,f.Slug
,f.StatusId
,f.DateModified
,f.DateCreated
,f.UserId



		
                , TotalCount = COUNT(1) OVER() -- this the quick way of doing the count. (see below)
        FROM    dbo.FriendsV2 as f inner join dbo.Images as i
    on f.PrimaryImageId = i.Id
        ORDER BY Id

	OFFSET @offSet Rows
	Fetch Next @PageSize  Rows ONLY


END 
GO
