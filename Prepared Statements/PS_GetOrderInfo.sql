PREPARE OrderInfo FROM '
SELECT
	OrderID,
    Quantity,
    TotalPrice
FROM Orders
WHERE OrderID = ?;
'