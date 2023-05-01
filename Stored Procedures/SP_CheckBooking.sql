DELIMITER //

CREATE PROCEDURE CheckBooking(IN x DATE, IN y INT)
BEGIN
    IF EXISTS(SELECT * FROM bookings WHERE DATE(BookingSlot) = x AND TableNo = y ) THEN
        SELECT 'Booking already exists';
    ELSE
        SELECT 'Booking available';
    END IF;
END //

DELIMITER ;