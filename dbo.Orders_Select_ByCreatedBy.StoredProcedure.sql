USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Orders_Select_ByCreatedBy]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/15/2022
-- Description: This proc returns a paginated responses of Orders selected by the user that created then and filtered by the status of the order. 
-- Code Reviewer:Ryuichi Matsushita

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[Orders_Select_ByCreatedBy]
				@CreatedBy int
			   ,@PageIndex int 
		       ,@PageSize int
			   ,@OrderStatusId int
as
 /* ----------- Test Code --------

			EXECUTE [dbo].[Orders_Select_ByCreatedBy] 
			 @CreatedBy = 3
			,@PageIndex = 0
	        ,@PageSize = 3
			,@OrderStatusId = 2

*/

Begin
DECLARE @offset int = @PageIndex * @PageSize
SELECT o.Id
      ,org.[Id]
	  ,org.[Name]
      ,os.[Id]
	  ,os.[Name]
      ,o.[TotalAmount]
      ,o.[CreatedBy]
      ,o.[ModifiedBy]
      ,o.[DateCreated]
      ,o.[DateModified]
      ,o.[SeatingLocationId]
      ,o.[PickupLocationId]
      ,o.[DeliveryLocationId]
	  ,TotalCount = COUNT(1) OVER()
  FROM [dbo].[Orders] as o inner join dbo.Organizations as org
  on o.OrganizationId = org.Id
  inner join dbo.OrderStatus as os
  on o.OrderStatusId = os.Id
  Where o.CreatedBy = @CreatedBy AND os.Id = @OrderStatusId
  Order by o.CreatedBy

OFFSET @offSet Rows
Fetch Next @PageSize Rows ONLY
End


GO
