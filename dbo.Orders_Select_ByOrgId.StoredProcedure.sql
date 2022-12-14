USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Orders_Select_ByOrgId]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/08/2022
-- Description:This proc is selects the orders based on the OrginizationId associated with it. 
-- Code Reviewer:Ryuichi Matsushita

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Orders_Select_ByOrgId]
			@OrgId int

as
 /* ----------- Test Code --------

			EXECUTE [dbo].[Orders_Select_ByOrgId] 
			 @OrgId = 8
			

			select *
			from dbo.Transactions
			select *
			from dbo.Orders	
			
			select *
			from dbo.Organizations

*/
Begin

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
  FROM [dbo].[Orders] as o inner join dbo.Organizations as org
  on o.OrganizationId = org.Id
  inner join dbo.OrderStatus as os
  on o.OrderStatusId = os.Id
  Where org.Id = @OrgId 
  Order by DateCreated Desc
 
End


GO
