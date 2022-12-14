USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[TechCompanies_Insert]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TechCompanies_Insert]
            @Name nvarchar(120)
           ,@Profile nvarchar(max)
           ,@Summary nvarchar(255)
           ,@Headline nvarchar(120)
           ,@ContactInformation nvarchar(1000)
           ,@Slug nvarchar(100)
           ,@StatusId int
           ,@ImageTypeId int
		   ,@ImageUrl nvarchar(500)
           ,@UrlLink nvarchar (500)
           ,@TagName nvarchar(50)
           ,@FriendId int
		   ,@Id int OUTPUT

as
/* 
Declare @Id int = 0;
Declare 
@Name nvarchar(120) = 'Netflix'
,@Profile nvarchar(max) = 'replaced cable'
,@Summary nvarchar(255) = 'started with mailing dvds '
,@Headline nvarchar(120) = 'cancel all the good shows'
,@ContactInformation nvarchar(1000)= '123-456-7892'
,@Slug nvarchar(100) = 'netflix'
,@StatusId int = 1
,@ImageTypeId int = 4
,@ImageUrl nvarchar(500)  = 'https://g.foolcdn.com/editorial/images/551298/netflix-la-headquarters.jpg'
,@UrlLink nvarchar(500) = 'https://www.netflix.com'
,@TagName nvarchar(50) = 'netflix'

,@FriendId int = 264

Execute dbo.TechCompanies_Insert
@Name
           ,@Profile
           ,@Summary 
           ,@Headline 
           ,@ContactInformation 
           ,@Slug 
           ,@StatusId 
           ,@ImageTypeId 
		   ,@ImageUrl
           ,@UrlLink
           ,@TagName
           ,@FriendId 
		   ,@Id

Select *
From dbo.TechCompanies

Execute dbo.TechCompanies_SelectAll
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

Declare @UrlId int = 0

INSERT INTO [dbo].[Url]
           ([Link])
     VALUES
           (@UrlLink)


set @UrlId = SCOPE_IDENTITY()

Declare @TagId int = 0

INSERT INTO [dbo].[Tags]
           ([Name])
     VALUES
           (@TagName)

set @TagId = SCOPE_IDENTITY()



INSERT INTO [dbo].[TechCompanies]
           ([Name]
           ,[Profile]
           ,[Summary]
           ,[Headline]
           ,[ContactInformation]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageId]
           ,[UrlId]
           ,[TagId]
           ,[FriendId])
     VALUES
           (@Name
           ,@Profile
           ,@Summary 
           ,@Headline 
           ,@ContactInformation 
           ,@Slug 
           ,@StatusId 
		   ,@ImageId
           ,@UrlId
           ,@TagId 
           ,@FriendId )

set @Id = SCOPE_IDENTITY()
END


GO
