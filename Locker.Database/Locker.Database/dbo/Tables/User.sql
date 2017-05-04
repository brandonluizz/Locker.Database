﻿CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY, 
	[Login] VARCHAR(60) NOT NULL,
    [UserName] VARCHAR(60) NOT NULL, 
    [Email] VARCHAR(100) NOT NULL,
	[Password] VARCHAR(60) NOT NULL,
	[CreationDateTime] DATETIME NOT NULL DEFAULT(GETDATE())
)
