DROP PROCEDURE IF EXISTS MaxQty;

DELIMITER $$
CREATE PROCEDURE MaxQty()
BEGIN
	SELECT MAX(Quantity)
	FROM orders;
END$$
DELIMITER ;