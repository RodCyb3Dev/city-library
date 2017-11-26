USE [LibraryDB]
GO

/****** Object: Table [dbo].[BranchHours] Script Date: 10/12/2017 3:52:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

INSERT INTO BranchHours (BranchId, CloseTime, [DayOfWeek], OpenTime) VALUES 
(1, 14, 1, 7),
(1, 18, 2, 7),
(1, 18, 3, 7),
(1, 18, 4, 7),
(1, 18, 5, 7),
(1, 18, 6, 7),
(1, 14, 7, 7),

(2, 20, 1, 6),
(2, 20, 2, 6),
(2, 20, 3, 6),
(2, 20, 4, 6),
(2, 20, 5, 6),
(2, 20, 6, 6),
(2, 20, 7, 6),

(3, 22, 1, 5),
(3, 18, 2, 5),
(3, 18, 3, 5),
(3, 18, 4, 5),
(3, 18, 5, 5),
(3, 22, 6, 5),
(3, 22, 7, 5)



