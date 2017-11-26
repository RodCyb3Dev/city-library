USE [LibraryDB]
GO

/****** Object: Table [dbo].[Patrons] Script Date: 10/12/2017 3:42:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

INSERT INTO 
Patrons([Address], DateOfBirth, FirstName, HomeLibraryBranchId, LastName, LibraryCardId, Telephone) VALUES
('165 Peace St', '1986-07-10', 'Jane', 1, 'Patterson', 1, '555-1234'),
('324 Shadow Ln', '1984-03-12', 'Margaret', 2, 'Smith', 2, '555-7785'),
('18 Stone Cir', '1956-02-10', 'Tomas', 2, 'Galloway', 3, '555-3467'),
('246 Jennifer St', '1997-01-17', 'Mary', 3, 'Li', 4, '555-1223'),
('1465 Williamson St', '1952-09-16', 'Dan', 3, 'Carter', 5, '555-8884'),
('785 Park Ave', '1994-03-24', 'Aruna', 3, 'Adhiban', 6, '555-9988'),
('5654 Main St', '2001-11-23', 'Raj', 1, 'Prasad', 7, '555-7894'),
('1352 Bicycle Ct', '1981-10-16', 'Tatyana', 3, 'Ponomaryova', 8, '555-4568');
SELECT * FROM Patrons



