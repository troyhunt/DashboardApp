CREATE TABLE [dbo].[User]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[LastName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Email] [nvarchar] (500) COLLATE Latin1_General_CI_AS NOT NULL,
[CreateDate] [datetime2] NOT NULL,
[Location] [sys].[geography] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
