DELIMITER $$
CREATE PROCEDURE UpdateBooking(IN b_id INT, IN b_date DATE)
BEGIN
    UPDATE bookings SET BookingSlot = b_date WHERE BookingID = b_id;
    ### SELECT CONCAT('Booking ',b_id,' updated') AS 'Confirmation';
    ### Remove commenting if you want to inform client of the update
END$$
DELIMITER ;

"""
TESTING CODE

DROP PROCEDURE IF EXISTS UpdateBooking;
SELECT * FROM BOOKINGS;
call UpdateBooking(9,"2022-12-29");
"""