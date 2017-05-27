CREATE TABLE [dbo].[Locker]
(
	[LockerId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[LockerBlockId] INT NOT NULL,
	[TraderId] INT NOT NULL,
	[VerticalPositionNumber] INT NOT NULL,
	[HorizontalPositionNumber] INT NOT NULL,	
	[IsUsing] BIT NOT NULL, 
    CONSTRAINT [FK_Locker_LockerBlock] FOREIGN KEY ([LockerBlockId]) REFERENCES [LockerBlock](LockerBlockId),
	CONSTRAINT [FK_Locker_Trader] FOREIGN KEY (TraderId) REFERENCES [Trader](TraderId)
)
