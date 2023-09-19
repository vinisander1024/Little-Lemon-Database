CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(IN bid INT, IN bdate DATE, IN tno INT, IN cid INT)
BEGIN
IF tno = ANY(SELECT TableNumber FROM Bookings WHERE BookingDate = bdate) THEN
	SELECT CONCAT("Table ", tno, " is already booked") AS BookingStatus;

ELSE
	INSERT INTO Bookings(BookingID, BookingDate, TableNumber, CustomerID) VALUES(bid, bdate, tno, cid);
	SELECT "Confirmed- New Booking Added" AS BookingStatus;
    
END IF;

END