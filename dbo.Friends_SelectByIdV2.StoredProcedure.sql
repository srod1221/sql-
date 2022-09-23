USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectByIdV2]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SelectByIdV2]
@Id int 

as
/*

Declare @Id int = 2

Execute dbo.Friends_SelectByIdV2 
@Id


*/

BEGIN


/* SELECT [Id]
      ,[TypeId]
      ,[Url]
  FROM [dbo].[Images] */



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

		
			
From dbo.FriendsV2 as f inner join dbo.Images as i
    on f.PrimaryImageId = i.Id
	Where f.Id = @Id
	
 /*SELECT [Id]
      ,[Title]
      ,[Bio]
      ,[Summary]
      ,[Headline]
      ,[Slug]
      ,[StatusId]
      ,[PrimaryImageId]
      ,[DateCreated]
      ,[DateModified]
      ,[UserId]
  FROM [dbo].[FriendsV2]
  Where Id = @Id */

 

END


GO
