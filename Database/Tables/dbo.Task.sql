CREATE TABLE [dbo].[Task]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[CreatedByUser] [int] NOT NULL,
[AssignedToUser] [int] NOT NULL,
[Title] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Description] [ntext] COLLATE Latin1_General_CI_AS NOT NULL,
[DueDate] [datetime2] NOT NULL,
[CreateDate] [datetime2] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Task] ADD CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Task] ADD CONSTRAINT [FK_Task_User1] FOREIGN KEY ([AssignedToUser]) REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Task] ADD CONSTRAINT [FK_Task_User] FOREIGN KEY ([CreatedByUser]) REFERENCES [dbo].[User] ([Id])
GO
