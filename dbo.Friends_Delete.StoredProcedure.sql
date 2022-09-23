USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Delete]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_Delete]
@Id int

as
/* 
Declare @Id int = 4

Select *
From dbo.Friends
Where Id = @Id;

Execute dbo.Friends_Delete

Select *
From dbo.Friends
Where Id = @Id;

*/

BEGIN



DELETE FROM [dbo].[Friends]
      WHERE Id = @Id

END
GO
