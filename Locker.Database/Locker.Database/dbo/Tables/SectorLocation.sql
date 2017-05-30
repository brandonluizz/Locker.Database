CREATE TABLE [dbo].[SectorLocation]
(
	[SectorLocationId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[TraderId] INT NOT NULL,
	[SectorLocationName] VARCHAR(60) NOT NULL,
	CONSTRAINT [FK_SectorLocation_Trader] FOREIGN KEY ([TraderId]) REFERENCES [Trader](TraderId)
)
