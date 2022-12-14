USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Transactions_Insert]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/08/2022
-- Description:This proc is to insert information recieved from the Stripe transaction object into the transaction table.
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[Transactions_Insert]
           @OrderId int
		  ,@PaymentTypeId int
          ,@ExternalTransactionId int
          ,@ExternalUserId int
          ,@AmountCharged decimal(18,2)
          ,@CreatedBy int
          ,@Id int OUTPUT
as 
/* -----TEST------

			DECLARE @Id int = 0;

			Declare       
			@OrderId int = 3
		  ,@PaymentTypeId int = 1
          ,@ExternalTransactionId int = 100
          ,@ExternalUserId int = 1001
          ,@AmountCharged decimal(18,2) = 250.00
          ,@CreatedBy int = 5     


			EXECUTE [dbo].[Transactions_Insert]
				   @OrderId 
		          ,@PaymentTypeId 
                  ,@ExternalTransactionId 
                  ,@ExternalUserId
                  ,@AmountCharged 
                  ,@CreatedBy 
                  ,@Id OUTPUT

			SELECT *
			FROM dbo.Transactions
			Where Id = @Id

*/

Begin


INSERT INTO [dbo].[Transactions]
           ([OrderId]
           ,[PaymentTypeId]
           ,[ExternalTransactionId]
           ,[ExternalUserId]
           ,[AmountCharged]
           ,[CreatedBy])
     VALUES
           (@OrderId
           ,@PaymentTypeId
           ,@ExternalTransactionId
           ,@ExternalUserId
           ,@AmountCharged
           ,@CreatedBy)

	SET @Id = SCOPE_IDENTITY()
           
End


GO
