USE [LibraryDB]
GO

/****** Object: Table [dbo].[Statuses] Script Date: 10/12/2017 3:47:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

INSERT INTO Statuses 
([Name], [Description]) VALUES
('Checked Out', 'A library asset that has been checked out'),
('Available', 'A library asset that is available for loan'),
('Lost', 'A library asset that has been lost'),
('On Hold', 'A library asset that has been placed On Hold for loan')
SELECT * FROM Statuses
