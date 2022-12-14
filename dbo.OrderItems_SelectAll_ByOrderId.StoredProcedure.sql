USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_SelectAll_ByOrderId]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/08/2022
-- Description:This proc returns a paginated response that grabs information based on on the OrderId. Joins with dbo.Orders and dbo.UserProfiles tables.
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[OrderItems_SelectAll_ByOrderId]
@OrderId int

as
 /* ----------- Test Code --------
            Declare @OrderId int = 1
			EXECUTE [dbo].[OrderItems_SelectAll_ByOrderId] 
			@OrderId 
			

*/


SELECT [Id]
      ,[OrderId]
      ,[MenuItemId]
      ,[Quantity]
      ,[BaseUnitCost]
      ,[AdjustedPerUnitCost]
      ,[PerUnitTaxCost]
      ,[DateCreated]
  FROM [dbo].[OrderItems]
  Where OrderId = @OrderId

GO
