USE [LibraryDB]
GO

/****** Object: Table [dbo].[LibraryAssets] Script Date: 3/18/2018 2:20:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LibraryAssets] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [Cost]           DECIMAL (18, 2) NOT NULL,
    [Discriminator]  NVARCHAR (MAX)  NOT NULL,
    [ImageUrl]       NVARCHAR (MAX)  NULL,
    [LocationId]     INT             NULL,
    [NumberOfCopies] INT             NOT NULL,
    [StatusId]       INT             NOT NULL,
    [Title]          NVARCHAR (MAX)  NOT NULL,
    [Year]           INT             NOT NULL,
    [Author]         NVARCHAR (MAX)  NULL,
    [DeweyIndex]     NVARCHAR (MAX)  NULL,
    [ISBN]           NVARCHAR (MAX)  NULL,
    [Director]       NVARCHAR (MAX)  NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_LibraryAssets_LocationId]
    ON [dbo].[LibraryAssets]([LocationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_LibraryAssets_StatusId]
    ON [dbo].[LibraryAssets]([StatusId] ASC);


GO
ALTER TABLE [dbo].[LibraryAssets]
    ADD CONSTRAINT [PK_LibraryAssets] PRIMARY KEY CLUSTERED ([Id] ASC);


GO
ALTER TABLE [dbo].[LibraryAssets]
    ADD CONSTRAINT [FK_LibraryAssets_LibraryBranches_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[LibraryBranches] ([Id]);


GO
ALTER TABLE [dbo].[LibraryAssets]
    ADD CONSTRAINT [FK_LibraryAssets_Statuses_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[Statuses] ([Id]) ON DELETE CASCADE;


