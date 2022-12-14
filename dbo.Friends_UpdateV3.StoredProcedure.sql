USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_UpdateV3]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_UpdateV3]
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
,@batchSkills dbo.BSkills READONLY
 

	  
	 
	  

as

BEGIN

/*
Declare @Id int = 281;

Declare

@Title nvarchar(50) = 'Batch Testing'
,@Bio nvarchar(700) = 'GM in the Coast Guard'
,@Summary nvarchar(255) = 'Friends since 2018'
,@Headline nvarchar(80) = 'sings very well'
,@Slug nvarchar(100) = 'benp'
,@StatusId int = 1
,@ImageTypeId int = 1
,@ImageUrl nvarchar(255)= 'https://www.shutterstock.com/image-photo/st-marys-lighthouse-on-tiny-bait-2102168614'
,@UserId int = 4578


Declare @batchSkills dbo.BSkills
Insert into @batchSkills (Name)
Values('React')
Insert into @batchSkills ( Name)
Values('C#')


Execute dbo.Friends_InsertV3
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
		   ,@batchSkills
		  
		   
		    
Execute dbo.Friends_SelectByIdV3 @Id

*/



UPDATE [dbo].[Images]
   SET [TypeId] = @ImageTypeId
      ,[Url] = @ImageUrl


Update dbo.Skills
	set Name = b.Name
From @batchSkills as b inner join dbo.Skills as s
		on s.Name = b.Name
		

				




UPDATE [dbo].[FriendsV2]
   SET [Title] = @Title
      ,[Bio] = @Bio
      ,[Summary] = @Summary
      ,[Headline] = @Headline
      ,[Slug] = @Slug
      ,[StatusId] = @StatusId
      
      ,[UserId] = @UserId
 WHERE Id = @Id




UPDATE [dbo].[FriendSkills]
   SET [FriendId] = @Id
      
 WHERE FriendId = @Id 









END





GO
