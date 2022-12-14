USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Jobs_Update]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Jobs_Update]
@Title nvarchar(120)
,@Description nvarchar(max)
,@Summary nvarchar(255)
,@Pay nvarchar(120)
,@Slug nvarchar(100)
,@StatusId int
,@TechCompanyId int
,@SkillsId int
,@Id int OUTPUT

as 
/* 
Declare @Id int=2




Select *
From dbo.Jobs
Where Id = @Id



Execute dbo.Jobs_Update
@Title 
,@Description 
,@Summary 
,@Pay 
,@Slug 
,@StatusId 
,@TechCompanyId 
,@SkillsId 
,@Id 

Select *
From dbo.Jobs
Where Id = @Id


*/

BEGIN

UPDATE [dbo].[Jobs]
   SET [Title] = @Title
      ,[Description] = @Description
      ,[Summary] = @Summary
      ,[Pay] = @Pay
      ,[Slug] = @Slug
      ,[StatusId] = @StatusId
      ,[TechCompanyId] = @TechCompanyId 
      ,[SkillsId] = @SkillsId
      
 WHERE Id = @id
END

GO
