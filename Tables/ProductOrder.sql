CREATE TABLE [dbo].[ProductOrder](
    [ProductOrderID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [ProductID] [int] NOT NULL FOREIGN KEY REFERENCES dbo.Product(ProductID),
    [Quantity] [int] NOT NULL
);