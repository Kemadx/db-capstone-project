DELIMITER $$

CREATE PROCEDURE AddBooking (IN b_id INT, IN c_id INT, IN b_date DATE, IN t_no INT)

BEGIN
INSERT INTO bookings VALUES
(b_id, t_no, b_date, 1, c_id);
SELECT "New booking added" AS Confirmation;

END $$

DELIMITER ;

"""
TESTING CODE:

CALL AddBooking(9,3,"2022-12-30",4);
SELECT * FROM bookings;
DELETE FROM bookings WHERE bookingid = 9;

DROP PROCEDURE AddBooking;
"""