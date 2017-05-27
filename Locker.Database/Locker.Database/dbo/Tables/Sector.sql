CREATE TABLE [dbo].[Sector]
(
	[SectorId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[TraderId] INT NOT NULL,
	[SectorName] VARCHAR(60) NOT NULL,
	[SectorLocationId] INT NOT NULL,
	CONSTRAINT [FK_Sector_SectorLocation] FOREIGN KEY ([SectorLocationId]) REFERENCES [SectorLocation]([SectorLocationId]),
	CONSTRAINT [FK_Sector_Trader] FOREIGN KEY ([TraderId]) REFERENCES [Trader](TraderId)
)
