USE [LibraryDB]
GO

/****** Object: Table [dbo].[LibraryCards] Script Date: 10/12/2017 3:39:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



INSERT INTO LibraryCards(Created, Fees) VALUES 
('2017-06-20', 12.00),
('2017-06-20', 0.00),
('2017-06-21', 0.50),
('2017-06-21', 0.00),
('2017-06-21', 3.50),
('2017-06-23', 1.50),
('2017-06-23', 0.00),
('2017-06-23', 8.00);
SELECT * FROM LibraryCards
