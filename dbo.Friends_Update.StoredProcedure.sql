USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Update]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_Update]
		@Title nvarchar(50)
      ,@Bio nvarchar(700)
      ,@Summary nvarchar(255)
      ,@Headline nvarchar(80)
      ,@Slug nvarchar(100)
      ,@StatusId int
      ,@PrimaryImageUrl nvarchar(255)
	  
      ,@UserId int 
	  ,@Id int
	  
	 
	  

as

BEGIN

/*Declare @Id int = 7

Declare @Title nvarchar(50) = 'Chris'
      ,@Bio nvarchar(700) = 'funny'
      ,@Summary nvarchar(255) = 'gunners mate'
      ,@Headline nvarchar(80) = 'San Diego'
      ,@Slug nvarchar(100) = 'chrisc'
      ,@StatusId int = 1
      ,@PrimaryImageUrl nvarchar(255) = 'image url'
      ,@UserId int = 6789

Select *
From dbo.Friends
Where Id = @Id

Execute dbo.Friends_Update
	@Title 
      ,@Bio 
      ,@Summary 
      ,@Headline 
      ,@Slug
      ,@StatusId 
      ,@PrimaryImageUrl 
      ,@UserId 
	  ,@Id

Select *
From dbo.Friends
Where Id = @Id


*/

	UPDATE [dbo].[Friends]
   SET [Title] = @Title
      ,[Bio] = @Bio
      ,[Summary] = @Summary
      ,[Headline] = @Headline
      ,[Slug] = @Slug
      ,[StatusId] = @StatusId
      ,[PrimaryImageUrl] = @PrimaryImageUrl
      
      ,[UserId] = @UserId
 WHERE Id = @Id
 Select *
From dbo.Friends
Where Id = @Id

END
GO
