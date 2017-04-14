CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[UserProfileId] INT NOT NULL,
	[UserName] VARCHAR(60) NOT NULL,
	[BirthDate] DATE NOT NULL,
	[RegistrationDate] DATETIME NOT NULL DEFAULT(GETDATE()),
	[ExpirationDate] DATETIME NOT NULL
)
