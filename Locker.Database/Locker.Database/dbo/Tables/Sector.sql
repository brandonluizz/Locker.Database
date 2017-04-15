CREATE TABLE [dbo].[Sector]
(
	[SectorId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[SectorName] VARCHAR(60) NOT NULL,
	[SectorLocationId] INT NOT NULL,
	CONSTRAINT [FK_Sector_SectorLocation] FOREIGN KEY ([SectorLocationId]) REFERENCES [Sector]([SectorLocationId]),
)
