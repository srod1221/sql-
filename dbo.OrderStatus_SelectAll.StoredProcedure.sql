USE [Carte]
GO
/****** Object:  StoredProcedure [dbo].[OrderStatus_SelectAll]    Script Date: 9/23/2022 2:29:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Shantay Rodriguez
-- Create date: 09/15/2022
-- Description: <Description,,>
-- Code Reviewer:

-- MODIFIED BY: author
-- MODIFIED DATE:12/1/2020
-- Code Reviewer:
-- Note:
-- =============================================
CREATE proc [dbo].[OrderStatus_SelectAll]


as
/*----Test Code----

Execute dbo.OrderStatus_SelectAll

*/

Begin

SELECT [Id]
      ,[Name]
  FROM [dbo].[OrderStatus]

End


GO
