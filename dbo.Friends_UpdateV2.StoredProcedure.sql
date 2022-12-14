USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_UpdateV2]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_UpdateV2]
@Title nvarchar(50) 
,@Bio nvarchar(700) 
,@Summary nvarchar(255)
,@Headline nvarchar(80) 
,@Slug nvarchar(100) 
,@StatusId int

,@ImageTypeId int
,@ImageUrl nvarchar(255)
,@UserId int 
,@Id int 
	  
	 
	  

as

BEGIN

/*
Declare @Id int = 7


Declare

@Title nvarchar(50) = 'Bill'
,@Bio nvarchar(700) = 'GM in the Coast Guard'
,@Summary nvarchar(255) = 'Friends since 2018'
,@Headline nvarchar(80) = 'changed'
,@Slug nvarchar(100) = 'benp'
,@StatusId int = 1
,@PrimaryImageId int = 1
,@ImageTypeId int = 1
,@ImageUrl nvarchar(255)= 'https://www.shutterstock.com/image-photo/st-marys-lighthouse-on-tiny-bait-2102168614'
,@UserId int = 1

Select *
From dbo.FriendsV2
Where Id = @Id

Execute dbo.Friends_UpdateV2
	@Title 
      ,@Bio 
      ,@Summary 
      ,@Headline 
      ,@Slug
      ,@StatusId 
      ,@PrimaryImageId 
	  ,@ImageTypeId
	  ,@ImageUrl
      ,@UserId 
	  ,@Id

Execute dbo.Friends_SelectByIdV2
@Id

*/



UPDATE [dbo].[Images]
   SET [TypeId] = @ImageTypeId
      ,[Url] = @ImageUrl







UPDATE [dbo].[FriendsV2]
   SET [Title] = @Title
      ,[Bio] = @Bio
      ,[Summary] = @Summary
      ,[Headline] = @Headline
      ,[Slug] = @Slug
      ,[StatusId] = @StatusId
      
      ,[UserId] = @UserId
 WHERE Id = @Id



END





GO
