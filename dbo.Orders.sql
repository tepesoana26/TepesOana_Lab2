CREATE TABLE [dbo].[Orders] (
    [OrderID]    INT IDENTITY (1, 1) NOT NULL,
    [CustomerID] INT NOT NULL,
    [BookID]     INT NOT NULL,
    [OrderDate] DATE NULL, 
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [FK_Orders_Books_BookID] FOREIGN KEY ([BookID]) REFERENCES [dbo].[Books] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_Orders_Book_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Book] ([CustomerID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Orders_BookID]
    ON [dbo].[Orders]([BookID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerID]
    ON [dbo].[Orders]([CustomerID] ASC);

