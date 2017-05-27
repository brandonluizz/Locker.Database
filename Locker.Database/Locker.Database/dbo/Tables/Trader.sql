CREATE TABLE [dbo].[Trader]
(
	[TraderId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [TraderName] VARCHAR(60) NOT NULL, 
    [TraderCnpj] VARCHAR(14) NOT NULL,
	[CreationDateTime] DATETIME NOT NULL DEFAULT(GETDATE()),
    [IsActive] BIT NOT NULL
)
