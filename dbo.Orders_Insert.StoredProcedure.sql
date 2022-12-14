USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Orders_Insert]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/015/2022
-- Description:This proc inserts records into the Orders table.
-- Code Reviewer:Ryuichi Matsushita

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[Orders_Insert]
		    @OrganizationId int
           ,@OrderStatusId int
           ,@TotalAmount decimal(18,2)
           ,@CreatedBy int 
           ,@ModifiedBy int           
           ,@SeatingLocationId int
           ,@PickupLocationId int
           ,@DeliveryLocationId int
		   ,@Id int Output
as

/* -----TEST------

			DECLARE @Id int = 0;

			Declare       
		    @OrganizationId int = 8
           ,@OrderStatusId int = 1
           ,@TotalAmount decimal(18,2) = 3500.00
           ,@CreatedBy int = 3
           ,@ModifiedBy int = 3         
           ,@SeatingLocationId int = 1
           ,@PickupLocationId int = 1
           ,@DeliveryLocationId int= 1

			EXECUTE [dbo].[Orders_Insert]
				  @OrganizationId 
                 ,@OrderStatusId 
                 ,@TotalAmount 
                 ,@CreatedBy 
                 ,@ModifiedBy          
                 ,@SeatingLocationId 
                 ,@PickupLocationId 
                 ,@DeliveryLocationId 
				 ,@Id Output


			SELECT *
			FROM dbo.Orders
			Where Id = @Id

*/
Begin

INSERT INTO [dbo].[Orders]
           ([OrganizationId]
           ,[OrderStatusId]
           ,[TotalAmount]
           ,[CreatedBy]
           ,[ModifiedBy]          
           ,[SeatingLocationId]
           ,[PickupLocationId]
           ,[DeliveryLocationId])
     VALUES
           (@OrganizationId
           ,@OrderStatusId
           ,@TotalAmount
           ,@CreatedBy
           ,@ModifiedBy          
           ,@SeatingLocationId
           ,@PickupLocationId
           ,@DeliveryLocationId)

	Set @Id = SCOPE_IDENTITY()
End

GO
