CREATE TABLE [dbo].[Locker]
(
	[LockerId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[LockerBlockId] INT NOT NULL,
	[NumberOfPositionLocker] INT NOT NULL,
	[VerticalPositionNumber] INT NOT NULL,
	[HorizontalPositionNumber] INT NOT NULL,
	[ArduinoId] VARCHAR(30) NULL,
	[IsUsing] BIT NOT NULL, 
    [IsActive] BIT NOT NULL, 
    CONSTRAINT [FK_Locker_LockerBlock] FOREIGN KEY ([LockerBlockId]) REFERENCES [LockerBlock](LockerBlockId)
)
