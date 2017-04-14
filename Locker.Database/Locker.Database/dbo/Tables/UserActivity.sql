CREATE TABLE [dbo].[UserActivity]
(
	[UserActivityId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[LockerId] INT NOT NULL,
	[UserId] INT NOT NULL,
	[InitialRentalDate] DATETIME NOT NULL DEFAULT(GETDATE()),
	[FinalRentalDate] DATETIME NULL,
	CONSTRAINT [FK_UserActivity_Locker] FOREIGN KEY ([LockerId]) REFERENCES [Locker]([LockerId]),
	CONSTRAINT [FK_UserActivity_User] FOREIGN KEY ([UserId]) REFERENCES [User]([UserId])
)
