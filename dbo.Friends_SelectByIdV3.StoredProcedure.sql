USE [C119_srod1221_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectByIdV3]    Script Date: 9/23/2022 2:34:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_SelectByIdV3]
@Id int 

as
/*   
Declare @Id int = 2
 Execute dbo.Friends_SelectByIdV3 @Id
*/

BEGIN

Select 
  f.Id
,i.Url as ImageUrl
,i.Id as ImageId
,i.TypeId
,f.Title
,f.Bio
,f.Summary
,f.Headline
,f.Slug
,f.StatusId
,f.DateModified
,f.DateCreated
,f.UserId
,Skills = (
Select s.Id as Id,

s.Name as SkillName
From dbo.Skills as s inner join dbo.FriendSkills as fs
  on s.Id = fs.SkillId
  Where fs.FriendId = f.Id
  For JSON AUTO   
)

		
			
From dbo.FriendsV2 as f inner join dbo.Images as i
    on f.PrimaryImageId = i.Id
	Where f.Id = @Id

END
GO
