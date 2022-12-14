USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Transactions_Select_ByOrgId]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/08/2022
-- Description:This proc is select the transaction information based on the organization's Id. Joins are with the dbo.Orders table which has an FK relationship with the Organizations table. 
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[Transactions_Select_ByOrgId]
			@OrgId int


AS
 /* ----------- Test Code --------

			EXECUTE [dbo].[Transactions_Select_ByOrgId] 
			 @OrgId = 1
			

			select *
			from dbo.Transactions
			select *
			from dbo.Orders	
			
			select *
			from dbo.Organizations

*/

Begin

SELECT o.OrganizationId as OrgId
      ,org.Name
	  ,t.[Id] as TransActionId
      ,o.[Id] as OrderId	  
      ,t.[PaymentTypeId]
      ,t.[ExternalTransactionId]
      ,t.[ExternalUserId]
      ,t.[AmountCharged]
      ,t.[CreatedBy]
      ,t.[DateCreated]
  FROM [dbo].[Transactions] as t inner join dbo.Orders as o
  on t.OrderId = o.Id
  inner join dbo.Organizations as org
  on o.OrganizationId = org.Id
  Where o.OrganizationId = @OrgId

End


GO
