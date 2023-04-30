DROP VIEW IF EXISTS OrdersView;
CREATE VIEW OrdersView AS
SELECT
	OrderID,
    Quantity,
    TotalPrice
FROM Orders
WHERE Quantity > 2;