CREATE TABLE [dbo].[Comment]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[Text] [ntext] COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [FK_Comment_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
GO
