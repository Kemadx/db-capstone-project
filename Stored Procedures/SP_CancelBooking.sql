DELIMITER $$

CREATE PROCEDURE CancelBooking (IN b_id INT)
BEGIN
	DELETE FROM bookings WHERE BookingID = b_id;
    ### SELECT CONCAT("booking ",b_id," cancelled") AS 'Confirmation';
    ### Remove the commenting should you want to inform the customer
END$$

DELIMITER ;

"""
TEST CODE

CALL CancelBooking(9);
"""