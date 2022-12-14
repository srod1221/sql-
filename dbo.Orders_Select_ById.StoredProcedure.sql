USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Orders_Select_ById]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shantay Rodriguez
-- Create date: <09/15/2022>
-- Description:	This proc selects the orders based on the user's id.
-- Code Reviewer:Ryuichi Matsushita
-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[Orders_Select_ById]
@Id int

as
	/* ---- TEST CODE ----

	DECLARE 
		@Id int = 11

	EXECUTE [dbo].[Orders_Select_ById]
		@Id

		select * from dbo.T
		SELECT * FROM DBO.ORGANIZATIONS
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
  Where o.Id = @Id

End


GO
