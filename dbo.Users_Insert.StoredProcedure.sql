USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_Insert]
@FirstName nvarchar(100) 
        ,@LastName nvarchar(100)
           ,@Email nvarchar(100) 
           ,@AvatarUrl nvarchar(255) 
           ,@Password nvarchar(64)
		   ,@TenantId nvarchar(30)
		   ,@Id int OUTPUT 



as
/*


Declare @Id int = 0;
Declare 
		@FirstName nvarchar(100) = 'Test'
        ,@LastName nvarchar(100) = 'Test1'
         ,@Email nvarchar(100) = 'test@gmail.com'
           ,@AvatarUrl nvarchar(255) = 'picture url'
           ,@Password nvarchar(64) = 'passwrod123' 
			@TenantId nvarchar(30) = 'U03K0HZQGAU'
Select * 
From dbo.Users


Execute dbo.Users_Insert
@FirstName 
        ,@LastName 
           ,@Email 
           ,@AvatarUrl 
           ,@Password
           ,@TenantId
		   ,@Id




Select * 
From dbo.Users
*/

BEGIN



INSERT INTO [dbo].[Users]
           ([FirstName]
           ,[LastName]
           ,[Email]
           ,[AvatarUrl]
           ,[Password]
           ,[TenantId]
           )
     VALUES
           (@FirstName
           ,@LastName
           ,@Email
           ,@AvatarUrl
           ,@Password
           ,@TenantId
           )

SET @Id = SCOPE_IDENTITY()
END
GO
