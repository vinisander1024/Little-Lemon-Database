CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`( IN bid INT, IN bdate DATE)
BEGIN
IF bid = ANY(SELECT BookingID FROM Bookings) THEN
	UPDATE Bookings SET BookingDate = bdate WHERE BookingID = bid;
ELSE
	SELECT "Invalid BookingID" AS BookingStatus;
END IF;
END