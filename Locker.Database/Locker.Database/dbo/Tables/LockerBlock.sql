CREATE TABLE [dbo].[LockerBlock]
(
	[LockerBlockId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[SectorId] INT NOT NULL,
	[TraderId] INT NOT NULL,
	[TotalNumberOfVerticalLockers] INT NOT NULL,
	[TotalNumberOfHorizontalLockers] INT NOT NULL,
	[TotalNumberOfLockers] INT NOT NULL,
	CONSTRAINT [FK_LockerBlock_Sector] FOREIGN KEY ([SectorId]) REFERENCES Sector(SectorId),
	CONSTRAINT [FK_LockerBlock_Trader] FOREIGN KEY ([TraderId]) REFERENCES [Trader](TraderId)
)
