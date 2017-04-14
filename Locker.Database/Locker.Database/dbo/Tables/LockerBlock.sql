CREATE TABLE [dbo].[LockerBlock]
(
	[LockerBlockId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[TotalNumberOfVerticalLockers] INT NOT NULL,
	[TotalNumberOfHorizontalLockers] INT NOT NULL,
	[TotalNumberOfLockers] INT NOT NULL
)
