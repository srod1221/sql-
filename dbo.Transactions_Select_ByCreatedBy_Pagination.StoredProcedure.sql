USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Transactions_Select_ByCreatedBy_Pagination]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/08/2022
-- Description:This proc is used to get the transaction information based on the userId. Joins dbo.Orders and UserProfiles
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[Transactions_Select_ByCreatedBy_Pagination]
				@CreatedBy int
			   ,@PageIndex int 
		       ,@PageSize int
as
 /* ----------- Test Code --------

			EXECUTE [dbo].[Transactions_Select_ByCreatedBy] 
			 @CreatedBy = 1
			,@PageIndex = 0
	        ,@PageSize = 3

*/
Begin

DECLARE @offset int = @PageIndex * @PageSize

SELECT t.[CreatedBy]  
       ,t.[Id] as TransactionId       
	   ,uP.[FirstName]
	   ,uP.[LastName]
       ,o.[Id] as OrderId
       ,t.[PaymentTypeId]
       ,t.[ExternalTransactionId]
       ,t.[ExternalUserId]
       ,t.[AmountCharged]       
       ,t.[DateCreated]
	   ,TotalCount = COUNT(1) OVER()
  FROM [dbo].[Transactions] as t inner join dbo.Orders as o
  on t.OrderId = o.Id 
  inner join dbo.Users as u
  on t.CreatedBy = u.Id
  inner join dbo.UserProfiles as uP
  on u.Id = up.UserId
  Where t.CreatedBy = @CreatedBy
  Order by TransactionId

  OFFSET @offSet Rows
  Fetch Next @PageSize Rows ONLY

End


GO
