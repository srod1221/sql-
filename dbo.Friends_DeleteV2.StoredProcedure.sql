USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_DeleteV2]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_DeleteV2]
@Id int

as
/* 
Declare @Id int = 40

Select *
From dbo.FriendsV2
Where Id = @Id;

Execute dbo.Friends_DeleteV2

Select *
From dbo.FriendsV2
Where Id = @Id;

*/

BEGIN


DELETE FROM [dbo].[FriendsV2]
      WHERE Id =@Id




END
GO
