CREATE PROCEDURE [dbo].[GetProductInfo]
    @ProductID INT
AS
BEGIN
    SELECT P.ProductID
        , P.ProductName
        , SUM(PO.Quantity) AS TotalQuantity
    FROM dbo.Product P
    LEFT JOIN dbo.ProductOrder PO ON PO.ProductID = P.ProductID
    WHERE P.ProductID = @ProductID
    GROUP BY P.ProductID, P.ProductName
END