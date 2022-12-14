USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[TechCompanies_SelectById]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TechCompanies_SelectById]
@Id int

as
/*
Declare @Id int = 2
Execute dbo.TechCompanies_SelectById
@Id


*/

Begin	
    SELECT 
		t.Id
      ,t.[Name]
      ,t.[Profile]
      ,t.[Summary]
      ,t.[Headline]
      ,t.[ContactInformation]
      ,t.[Slug]
      ,t.[StatusId]
      ,i.[Id] as ImageTypeId
	  ,i.Url as ImageUrl
	  
      ,u.Link as Link
	  
	  ,tg.Name as TagName
      ,f.[Id] as FriendId


  FROM [dbo].[TechCompanies] as t inner join dbo.Images as i 
  on t.PrimaryImageId = i.Id
  inner join dbo.Url as u
  on t.UrlId = u.Id
  inner join dbo.Tags as tg
  on t.TagId = tg.Id
  inner join dbo.FriendsV2 as f
  on t.FriendId = f.Id


  Where t.Id =@Id
End 


GO
