CREATE TABLE [dbo].[Locker]
(
	[LockerId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[SectorId] INT NOT NULL,
	[LockerBlockId] INT NOT NULL,
	[VerticalPositionNumber] INT NOT NULL,
	[HorizontallPositionNumber] INT NOT NULL,	
	CONSTRAINT [FK_Locker_Sector] FOREIGN KEY ([SectorId]) REFERENCES [Sector]([SectorId]),
	CONSTRAINT [FK_Locker_LockerBlock] FOREIGN KEY ([LockerBlockId]) REFERENCES [LockerBlock](LockerBlockId)

)
