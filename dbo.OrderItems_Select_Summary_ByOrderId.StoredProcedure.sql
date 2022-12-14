USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Select_Summary_ByOrderId]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/15/2022
-- Description:This proc returns a paginated response that grabs information based on on the OrderId. Joins with dbo.Orders and dbo.UserProfiles tables.
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[OrderItems_Select_Summary_ByOrderId]

as
/* Test Code
 Select *
 from dbo.Orders
  Select *
 from dbo.MenuModifications
  Select *
 from dbo.Tags
  Select *
 from dbo.MenuItems


*/

Begin
SELECT [Id]
      ,[OrganizationId]
      ,[OrderStatusId]
      ,[UnitCost]
      ,[Name]
      ,[Description]
      ,[ImageUrl]
      ,[CreatedBy]
      ,[ModifiedBy]
      ,[DateCreated]
      ,[DateModified]
      ,[IsDeleted]
      ,[IsPublished]
  FROM [dbo].[MenuItems]

End


GO
