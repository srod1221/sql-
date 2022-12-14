USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Insert]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_Insert] 
@Title nvarchar(50) 
,@Bio nvarchar(700) 
,@Summary nvarchar(255)
,@Headline nvarchar(80) 
,@Slug nvarchar(100) 
,@StatusId int 
,@PrimaryImageUrl nvarchar(255) 
,@UserId int 
,@Id int OUTPUT



/* 
Declare @Id int = 0;
Declare @Title nvarchar(50) = 'Ben '
,@Bio nvarchar(700) = 'GM in the Coast Guard'
,@Summary nvarchar(255) = 'Friends since 2018'
,@Headline nvarchar(80) = 'sings very well'
,@Slug nvarchar(100) = 'benp'
,@StatusId int = 1
,@PrimaryImageUrl nvarchar(255) = 'pictureurl'
,@UserId int = 5678

Select *
From dbo.Friends

Execute dbo.Friends_Insert

Select *
From dbo.Friends
*/

as

Begin



	INSERT INTO [dbo].[Friends]
           ([Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageUrl]
           ,[UserId])
     VALUES
	   (@Title
           ,@Bio
           ,@Summary
           ,@Headline
           ,@Slug
           , @StatusId
           ,@PrimaryImageUrl
           ,@UserId)

SEt @Id = SCOPE_IDENTITY()

END
GO
