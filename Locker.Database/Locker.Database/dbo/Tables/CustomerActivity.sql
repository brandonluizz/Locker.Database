CREATE TABLE [dbo].[CustomerActivity]
(
	[CustomerActivityId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[LockerId] INT NOT NULL,
	[CustomerId] INT NOT NULL,
	[InitialRentalDate] DATETIME NOT NULL DEFAULT(GETDATE()),
	[FinalRentalDate] DATETIME NULL,
	CONSTRAINT [FK_UserActivity_Locker] FOREIGN KEY ([LockerId]) REFERENCES [Locker]([LockerId]),
	CONSTRAINT [FK_UserActivity_User] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
)
