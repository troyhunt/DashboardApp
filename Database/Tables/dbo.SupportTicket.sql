CREATE TABLE [dbo].[SupportTicket]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[UserId] [int] NOT NULL,
[Description] [ntext] COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SupportTicket] ADD CONSTRAINT [PK_SupportTicket] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SupportTicket] ADD CONSTRAINT [FK_SupportTicket_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
GO
