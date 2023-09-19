CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(IN bdate DATE, IN id INT)
BEGIN
IF id = ANY(SELECT BookingID FROM Bookings WHERE BookingDate = bdate) THEN
	SELECT CONCAT("Table ", id, " is already booked.") AS BookingStatus;
ELSE
	SELECT CONCAT("Table ", id, " is available.") AS BookingStatus;
END IF;
END