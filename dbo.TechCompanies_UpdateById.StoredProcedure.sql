USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[TechCompanies_UpdateById]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[TechCompanies_UpdateById]
@Name nvarchar(120)
           ,@Profile nvarchar(max)
           ,@Summary nvarchar(255)
           ,@Headline nvarchar(120)
           ,@ContactInformation nvarchar(1000)
           ,@Slug nvarchar(100)
           ,@StatusId int
           ,@PrimaryImageId int
           ,@UrlId int
           ,@TagId int
           ,@FriendId int
		   ,@Id int 

as
/* 
Declare @Id int = 2
Declare 
@Name nvarchar(120) = 'Amazon'
,@Profile nvarchar(max) = 'largest search engine'
,@Summary nvarchar(255) = 'Amazon'
,@Headline nvarchar(120) = 'test'
,@ContactInformation nvarchar(1000)= '123-456-7892'
,@Slug nvarchar(100) = 'amazon'
,@StatusId int = 1
,@PrimaryImageId int = 1
,@Url int = 2
,@Tags int = 3
,@FriendId int = 1

Select * 
From dbo.TechCompanies
Where Id = @Id

Execute dbo.TechCompanies_UpdateById
@Name
           ,@Profile
           ,@Summary 
           ,@Headline 
           ,@ContactInformation 
           ,@Slug 
           ,@StatusId 
           ,@PrimaryImageId 
           ,@Url 
           ,@Tags 
           ,@FriendId 
		   ,@Id

Select * 
From dbo.TechCompanies
Where Id = @Id
*/

BEGIN

UPDATE [dbo].[TechCompanies]


   SET [Name] = @Name
      ,[Profile] = @Profile
      ,[Summary] = @Summary
      ,[Headline] = @Headline
      ,[ContactInformation] = @ContactInformation
      ,[Slug] = @Slug
      ,[StatusId] = @StatusId
      ,[PrimaryImageId] = @PrimaryImageId
      ,[UrlId] = @UrlId
      ,[TagId] = @TagId
      ,[FriendId] = @FriendId
 WHERE Id = @Id

 END 


GO
