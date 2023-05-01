### This is the Stored Procedure that we are using
DELIMITER $$
CREATE PROCEDURE AddValidBooking(IN tableno INT, IN bookingdate DATE)
BEGIN
    DECLARE bookingExists INT DEFAULT 0;
    DECLARE NextBookingID INT DEFAULT 0;
    START TRANSACTION;
    SELECT MAX(BookingID) + 1 INTO NextBookingID FROM bookings;
    SELECT COUNT(*) INTO bookingExists FROM bookings WHERE TableNo = tableno AND DATE(Bookingslot) = bookingdate;
    IF bookingExists > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Reservation for tableno ',tableno, ' on ',bookingdate,' already exists. Booking cancelled') AS 'Booking status';
    ELSE
        INSERT INTO bookings (BookingID, TableNo, BookingSlot, StaffID, CustomerID) VALUES (NextBookingID, tableno, bookingdate,1,1);
        COMMIT;
        SELECT 'Booking successful' AS 'Booking status';
    END IF;
END$$
DELIMITER ;

"""
Everything below this was used for testing purposes only:

DROP PROCEDURE AddValidBooking;

CALL AddValidBooking(5,"2022-10-10");
CALL AddValidBooking(4,"2022-10-12");
SELECT * FROM bookings;
DELETE FROM bookings where BookingID = 5;


### This is an alternative option
DELIMITER ;

CREATE PROCEDURE AddValidBooking(IN tableno INT, IN bookingdate DATE)
BEGIN
    IF EXISTS (SELECT * FROM bookings WHERE tableNumber = tableno AND DATE(bookingslot) = bookingdate) THEN
        SELECT 'Booking already exists';
    ELSE
        START TRANSACTION;
        INSERT INTO bookings (tableNumber, bookingDate) VALUES (tableno, bookingdate);
        COMMIT;
    END IF;
END;
"""