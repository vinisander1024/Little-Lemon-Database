CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(IN id INT)
BEGIN
IF id = ANY(SELECT BookingID FROM Bookings) THEN
	DELETE FROM Bookings WHERE BookingID = id;
    SELECT CONCAT("Booking ", id, " cancelled.") AS Status;
    COMMIT;
ELSE
	SELECT "BookingID doesnot Exist" AS Status;
	ROLLBACK;
END IF;
END