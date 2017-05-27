CREATE TABLE [dbo].[Customer]
(
	[CustomerId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[TraderId] INT NOT NULL,
	[CustomerName] VARCHAR(60) NOT NULL,
	[CustomerCpf] varchar(11) NOT NULL,
	[BirthDate] DATE NOT NULL,
	[RegistrationDate] DATETIME NOT NULL DEFAULT(GETDATE()),
	[ExpirationDate] DATETIME NOT NULL,
	CONSTRAINT [FK_Customer_Trader] FOREIGN KEY (TraderId) REFERENCES [Trader](TraderId)
)
