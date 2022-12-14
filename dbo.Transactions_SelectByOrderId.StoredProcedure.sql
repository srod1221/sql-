USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Transactions_SelectByOrderId]    Script Date: 9/23/2022 2:29:23 PM ******/
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

CREATE proc [dbo].[Transactions_SelectByOrderId]
			@OrderId int


as
 /* ----------- Test Code --------
            Declare @OrderId int = 1
			EXECUTE [dbo].[Transactions_SelectByOrderId] 
			@OrderId 
			

			select *
			from dbo.Transactions	

*/


begin

SELECT t.[Id]
       ,uP.[UserId] as UserId
	   ,uP.[FirstName]
	   ,uP.[LastName]
       ,o.[Id] as OrderId
       ,t.[PaymentTypeId]
       ,t.[ExternalTransactionId]
       ,t.[ExternalUserId]
       ,t.[AmountCharged]
       ,t.[CreatedBy] 
       ,t.[DateCreated]	   
  FROM [dbo].[Transactions] as t inner join dbo.Orders as o
  on t.OrderId = o.Id 
  inner join dbo.Users as u
  on t.CreatedBy = u.Id
  inner join dbo.UserProfiles as uP
  on u.Id = up.UserId
  Where OrderId = @OrderId
  Order by t.Id
 

end

GO
