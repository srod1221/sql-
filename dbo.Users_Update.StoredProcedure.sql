USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Update]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_Update] 
	@FirstName nvarchar(100)
      ,@LastName nvarchar(100)
      ,@Email nvarchar(100)
      ,@AvatarUrl nvarchar(255)
      ,@Password nvarchar(64)
	  ,@TenantId nvarchar(30)
	  ,@Id int 
	  
	

as

BEGIN 


  
/*	  

 Declare @Id int = 4

 declare @FirstName nvarchar(100) = 'test2'
      ,@LastName nvarchar(100) = 'last2'
      ,@Email nvarchar(100) = 'user2@example.com'
      ,@AvatarUrl nvarchar(255) = 'image url'
      ,@Password nvarchar(64) = 'C0mmline4673!'
	  ,@TenantId nvarchar(30) = 'U03K0HZQGAU'

	Select *
	  From dbo.Users
	  Where Id = @Id

  Execute dbo.Users_Update
						@FirstName 
						,@LastName 
						,@Email 
						,@AvatarUrl 
						 ,@Passwword
						 ,@TenantId 
						,@Id 
						
	
	Select *
	  From dbo.Users
	  Where Id = @Id					
						
*/

	  

	UPDATE [dbo].[Users]
   SET [FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[Email] = @Email
      ,[AvatarUrl] = @AvatarUrl
      ,[Password] = @Password
      ,[TenantId] = @TenantId
      
 WHERE Id = @Id

END
GO
