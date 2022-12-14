USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[Orders_Update_TotalAmount_ById]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Shantay Rodriguez
-- Create date: 09/15/2022
-- Description:This proc is makes updates to the TotalAmount column in the Orders Table.
-- Code Reviewer:Ryuichi Matsushita

-- MODIFIED BY: author
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[Orders_Update_TotalAmount_ById]
@TotalAmount decimal(18,2)
,@Id int

as
/* Test Code
DECLARE @Id int = 8

Declare @TotalAmount decimal(18,2)= 300.23

Select * 
From dbo.Orders

Execute dbo.Orders_Update_TotalAmount_ById
@TotalAmount
,@Id


Select * 
From dbo.Orders
Where Id = @Id
*/

Begin

UPDATE [dbo].[Orders]
   SET [TotalAmount] = @TotalAmount
      
 WHERE Id = @Id
End


GO
