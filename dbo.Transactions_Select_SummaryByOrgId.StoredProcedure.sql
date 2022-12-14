USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Transactions_Select_SummaryByOrgId]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/09/2022
-- Description:This proc provides the total summary of transactions between 2 date ranges. Joins with dbo.Orders table.
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[Transactions_Select_SummaryByOrgId] 
			@OrgId int
			,@StartDate datetime2
			,@EndDate datetime2
as
 /* ----------- Test Code --------

			EXECUTE [dbo].[Transactions_Select_SummaryByOrgId] 
			 @OrgId = 1
			 ,@StartDate = '20220907 21:00'
			 ,@EndDate = '20220911 21:00'

			

			select *
			from dbo.Transactions
			select *
			from dbo.Orders	
			
			select *
			from dbo.Organizations

*/

Begin




SELECT o.[OrganizationId] as OrganizationId	
      ,org.[Name]
      ,t.[Id] as TransActionId
      ,o.[Id] as OrderId	  
      ,t.[PaymentTypeId]
      ,t.[ExternalTransactionId]
      ,t.[ExternalUserId]	 
	  ,t.[CreatedBy]	  
	  ,TotalSummary = (Select SUM(t.[AmountCharged] ) as TotalSummary
	  from dbo.Transactions as t inner join dbo.Orders as o
	  on t.OrderId = o.Id	
	  Where t.DateCreated between @StartDate AND @EndDate 
	   )
	  
  FROM [dbo].[Transactions] as t inner join dbo.Orders as o
  on t.OrderId = o.Id 
  inner join dbo.Organizations as org
  on o.OrganizationId = org.Id
  Where o.OrganizationId = @OrgId
	  
End

GO
