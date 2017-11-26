USE [LibraryDB]
GO

/****** Object: Table [dbo].[LibraryBranches] Script Date: 10/12/2017 3:35:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


INSERT INTO 
LibraryBranches(ImageUrl, [Address], [Name], Telephone, OpenDate, [Description]) 
VALUES 
('/images/branches/1.png', '88 Lakeshore Dr', 'Lake Shore Branch', '555-1234', '1975-05-13', 'The oldest library branch in Lakeview, the Lake Shore Branch was opened in 1975. Patrons of all ages enjoy the wide selection of literature available at Lake Shore library. The coffee shop is open during library hours of operation.'),
('/images/branches/2.png', '123 Skyline Dr', 'Mountain View Branch', '555-1235', '1998-06-01', 'The Mountain View branch contains the largest collection of technical and language learning books in the region. This branch is within walking distance to the University campus'),
('/images/branches/3.png', '540 Inventors Circle', 'Pleasant Hill Branch', '555-1236', '2017-09-20', 'The newest Lakeview Library System branch, Pleasant Hill has high-speed wireless access for all patrons and hosts Chess Club every Monday and Wednesday evening at 6 PM.');
SELECT * FROM LibraryBranches
