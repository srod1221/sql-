USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[TechCompany_Search_Pagination]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TechCompany_Search_Pagination]
@PageIndex int 
,@PageSize int 
,@Query nvarchar(100) 

as
/*



Declare
@PageIndex int = 0,
@PageSize int = 10 ,
@Query nvarchar(100) = 'Twitter'
Execute [dbo].[TechCompany_Search_Pagination]
@PageIndex 
,@PageSize 
,@Query
*/
BEGIN


Declare @offset int = @PageIndex * @PageSize

SELECT 
t.Id
      ,t.[Name]
      ,t.[Profile]
      ,t.[Summary]
      ,t.[Headline]
      ,t.[ContactInformation]
      ,t.[Slug]
      ,t.[StatusId]
      ,i.[Id] as ImageId
      ,u.[Id] as UrlId
      ,tg.[Id] as TagId
      ,f.[Id] as FriendId




		
                , TotalCount = COUNT(1) OVER() -- this the quick way of doing the count. (see below)
        FROM [dbo].[TechCompanies] as t inner join dbo.Images as i 
  on t.PrimaryImageId = i.Id
  inner join dbo.Url as u
  on t.PrimaryImageId = u.Id
  inner join dbo.Tags as tg
  on t.TagId = tg.Id
  inner join dbo.FriendsV2 as f
  on t.FriendId = f.Id
	WHERE (Name LIKE '%' + @Query + '%')
        ORDER BY Id

		OFFSET @offSet Rows
	Fetch Next @PageSize Rows ONLY
END
GO
