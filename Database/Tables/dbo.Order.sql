CREATE TABLE [dbo].[Order]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[UserId] [int] NOT NULL,
[ItemId] [int] NOT NULL,
[Units] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_Item] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
GO
