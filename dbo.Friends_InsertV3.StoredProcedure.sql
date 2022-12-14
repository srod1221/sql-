USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_InsertV3]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Friends_InsertV3]
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
,@batchSkills dbo.BSkills READONLY



as
/* 


Declare @Id int = 0;
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

INSERT INTO dbo.Skills
([Name])

Select bs.[Name]
FROM @batchSkills as bs

WHERE NOT EXISTS ( Select 1 
from dbo.Skills as s
where s.Name = bs.Name)

Insert into dbo.FriendSkills
(FriendId, SkillId)

Select @Id 
, sk.Id as id
From dbo.Skills as sk
Where EXISTS (Select 1
From @batchSkills as s 
Where sk.Name = s.Name)

END 
GO
