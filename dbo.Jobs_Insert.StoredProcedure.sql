USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Jobs_Insert]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Jobs_Insert]


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
Declare @Id int  = 0
Declare @Title nvarchar(120) = 'fullstack developer'
,@Description nvarchar(max) = 'work with front end, middle-tier, backend'
,@Summary nvarchar(255) = 'work on development of websites'
,@Pay nvarchar(120)= '90000'
,@Slug nvarchar(100) = 'fdev'
,@StatusId int = 1
,@TechCompanyId int = 3
,@SkillsId int = 3


Execute dbo.Jobs_Insert
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

*/

BEGIN

INSERT INTO [dbo].[Jobs]
           ([Title]
           ,[Description]
           ,[Summary]
           ,[Pay]
           ,[Slug]
           ,[StatusId]
           ,[techCompanyId]
           ,[SkillsId]
           )
     VALUES
           (@Title
           ,@Description
           ,@Summary
           ,@Pay
           ,@Slug
           ,@StatusId
           ,@TechCompanyId
		   ,@SkillsId
           )


set @Id = SCOPE_IDENTITY()


END 
GO
