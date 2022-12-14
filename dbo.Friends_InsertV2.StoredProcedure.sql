USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_InsertV2]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_InsertV2]
@Title nvarchar(50) 
,@Bio nvarchar(700) 
,@Summary nvarchar(255)
,@Headline nvarchar(80) 
,@Slug nvarchar(100) 
,@StatusId int
,@ImageTypeId int
,@ImageUrl nvarchar(255)
,@UserId int 
,@Id int OUTPUT

as
/* 


Declare @Id int = 0;
Declare

@Title nvarchar(50) = 'Bill'
,@Bio nvarchar(700) = 'GM in the Coast Guard'
,@Summary nvarchar(255) = 'Friends since 2018'
,@Headline nvarchar(80) = 'sings very well'
,@Slug nvarchar(100) = 'benp'
,@StatusId int = 1
,@ImageTypeId int = 1
,@ImageUrl nvarchar(255)= 'https://www.shutterstock.com/image-photo/st-marys-lighthouse-on-tiny-bait-2102168614'
,@UserId int = 4578

Execute dbo.Friends_InsertV2
		   @Title
           ,@Bio
           ,@Summary
           ,@Headline
           ,@Slug
           ,@StatusId
		   ,@ImageTypeId
		   ,@ImageUrl
           ,@UserId        
		   ,@Id OUTPUT
		    

Select *
From dbo.FriendsV2 as f2 inner join dbo.Images as i
    on f2.PrimaryImageId = i.Id

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


*/


BEGIN

Declare @ImageId int = 0



INSERT INTO [dbo].[Images]
           ([TypeId]
           ,[Url])
     VALUES
           (
           @ImageTypeId
           ,@ImageUrl
           )

SET @ImageId = SCOPE_IDENTITY()


INSERT INTO [dbo].[FriendsV2] 
           ([Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageId]
		   ,[UserId])
     VALUES

           (
		   @Title                      
           ,@Bio
           ,@Summary
           ,@Headline
           ,@Slug
           ,@StatusId
           ,@ImageId
		   ,@UserId)

SET @Id = SCOPE_IDENTITY()




END 
GO
