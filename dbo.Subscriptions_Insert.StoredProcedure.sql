USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Subscriptions_Insert]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Shantay Rodriguez
-- Create date: 09/14/2022
-- Description: <Description,,>
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:12/1/2020
-- Code Reviewer:
-- Note:
CREATE proc [dbo].[Subscriptions_Insert]
 @SubscriptionId nvarchar(100)
,@UserId int
,@CustomerId nvarchar(100)
,@isActive nvarchar(20)
,@Id int Output
as

begin
/* -----TEST------

			DECLARE @Id int = 0;

			Declare       
			 @SubscriptionId nvarchar(100) = 'subscipsad6454545'
            ,@UserId int = '3'
            ,@CustomerId nvarchar(100) = 'cusksa12564'            
            ,@isActive nvarchar(20) = 'Active'


			EXECUTE [dbo].[Subscriptions_Insert]
				 @SubscriptionId
                ,@UserId
                ,@CustomerId                 
                ,@isActive 
                ,@Id OUTPUT

			SELECT *
			FROM dbo.Subscriptions
			
*/



INSERT INTO [dbo].[Subscriptions]
           ([SubscriptionId]
           ,[UserId]
           ,[CustomerId]           
           ,[isActive])
     VALUES
           (@SubscriptionId
           ,@UserId
           ,@CustomerId           
           ,@isActive )
	Set @Id = SCOPE_IDENTITY()
End


GO
