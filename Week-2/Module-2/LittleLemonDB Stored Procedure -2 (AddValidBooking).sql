CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(IN bdate DATE, IN id INT)
BEGIN
START TRANSACTION;
IF id = ANY(SELECT TableNumber FROM Bookings WHERE BookingDate = bdate) THEN
	SELECT CONCAT("Table ", id, " is already booked - Booking cancelled") AS BookingStatus;
    ROLLBACK;
ELSE
	INSERT INTO Bookings(BookingDate, TableNumber, CustomerID) VALUES(bdate, id, NULL);
	SELECT CONCAT("Table ", id, " is available - Booking been done successfully") AS BookingStatus;
END IF;
COMMIT;
END