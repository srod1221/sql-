USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Delete]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_Delete]
@Id int

as
/*
Declare @Id int = 4

Select *
From dbo.Users
Where Id = @Id;

Execute dbo.Users_Delete

Select *
From dbo.Users
Where Id = @Id;
*/

BEGIN



DELETE FROM [dbo].[Users]
      WHERE Id = @Id

END
GO
