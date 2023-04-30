DROP VIEW IF EXISTS HighSellingMenus;
CREATE VIEW HighSellingMenus AS
SELECT Cuisine
FROM menu
WHERE MenuID = ANY (
	SELECT MenuID
    FROM orders
    WHERE Quantity > 2);