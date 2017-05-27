CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
	[TraderId] INT NOT NULL,
	[Login] VARCHAR(60) NOT NULL,
    [UserName] VARCHAR(60) NOT NULL, 
    [Email] VARCHAR(100) NOT NULL,
	[Password] VARCHAR(60) NOT NULL,
	[CreationDateTime] DATETIME NOT NULL DEFAULT(GETDATE()),
	CONSTRAINT [FK_User_Trader] FOREIGN KEY ([TraderId]) REFERENCES [Trader](TraderId),
)
