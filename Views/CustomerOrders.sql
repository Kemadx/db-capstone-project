DROP VIEW IF EXISTS CustomerOrders;
CREATE VIEW CustomerOrders AS
SELECT
	c.CustomerID,
    c.FullName,
    o.OrderID,
    o.TotalPrice,
    m.cuisine
FROM orders AS o
INNER JOIN customers AS c USING (CustomerID)
INNER JOIN menu AS m USING (MenuID);