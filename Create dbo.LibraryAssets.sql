USE [LibraryDB]
GO

/****** Object: Table [dbo].[LibraryAssets] Script Date: 10/12/2017 3:48:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

INSERT INTO LibraryAssets
(Discriminator, Cost, LocationId, StatusId, Author, DeweyIndex, ISBN, Title, [Year], Director, ImageUrl, NumberOfCopies) VALUES
('Book', 18.00, 2, 2, 'Jane Austen', '823.123', '9781519202987', 'Emma', 1815, NULL, '/images/emma.png', 1),
('Book', 18.00, 3, 2, 'Charlotte Bront�', '822.133', '9781519133977', 'Jane Eyre', 1847, NULL, '/images/janeeyre.png', 1),
('Book', 12.99, 2, 2, 'Herman Melville', '821.153', '9780746062760', 'Moby Dick', 1851, NULL, '/images/mobydick.png', 1),
('Book', 24.00, 2, 2, 'James Joyce', '822.556', '9788854139343', 'Ulysses', 1922, NULL, '/images/ulysses.png', 3),
('Book', 11.00, 3, 2, 'Plato', '820.119', '9780758320209', 'Republic', -380, NULL, '/images/republic.png', 2),
('Book', 18.00, 3, 2, 'Bram Stoker', '821.526', '9781623750282', 'Dracula', 1897, NULL, '/images/dracula.png', 4),
('Book', 12.99, 2, 2, 'Don Delillo', '822.436', '9780670803736', 'White Noise', 1985, NULL, '/images/default.png', 1),
('Book', 16.00, 2, 2, 'James Baldwin', '821.325', '9780552084574', 'Another Country', 1962, NULL, '/images/default.png', 2),
('Book', 11.00, 1, 2, 'Virginia Woolf', '822.888', '9781904919582', 'The Waves', 1931, NULL, '/images/thewaves.png', 1),
('Book', 11.99, 1, 2, 'Alice Walker',	'820.298', '9780151191543', 'The Color Purple', 1982, NULL, '/images/default.png', 2),
('Book', 12.50, 1, 2, 'Gabriel Garc�a M�rquez', '821.544', '9789631420494', 'One Hundred Years of Solitude', 1967, NULL, '/images/default.png', 1),
('Book', 22.00, 1, 2, 'Alice Monroe', '821.444', '9788702163452', 'Friend of My Youth', 1990, NULL, '/images/default.png', 1),
('Book', 13.50, 1, 2, 'Virginia Woolf', '820.111', '9780795310522', 'To the Lighthouse', 1927, NULL, '/images/tothelighthouse.png', 5),
('Book', 15.99, 3, 2, 'Virginia Woolf', '821.254', '9785457626126', 'Mrs Dalloway', 1925, NULL, '/images/mrsdalloway.png', 1),
('Video', 24.00, 1, 2, NULL, NULL, NULL, 'Blue Velvet',	1986, 'David Lynch', '/images/default.png', 1),
('Video', 24.00, 1, 2, NULL, NULL, NULL, 'Trois Coleurs: Rouge', 1994, 'Krzysztof Kieslowski', '/images/default.png', 1),
('Video', 30.00, 1, 2, NULL, NULL, NULL, 'Citizen Kane',	1941, 'Orson Welles', '/images/default.png', 1),
('Video', 28.00, 2, 2, NULL, NULL, NULL, 'Spirited Away',	2002, 'Hayao Miyazaki', '/images/default.png', 1),
('Video', 23.00, 2, 2, NULL, NULL, NULL, 'The Departed',	2006, 'Martin Scorsese', '/images/default.png', 1),
('Video', 17.99, 2, 2, NULL, NULL, NULL, 'Taxi Driver', 1976, 'Martin Scorsese', '/images/default.png', 1),
('Video', 18.00, 3, 2, NULL, NULL, NULL, 'Casablanca',	1943, 'Michael Curtiz', '/images/default.png', 1);
SELECT * FROM LibraryAssets


