SELECT * FROM littlelemondm.bookings;

CALL CheckBooking("2022-12-17", 6);

CALL AddValidBooking("2022-12-18", 6);

CALL AddBooking(9, "2022-12-18", 10, NULL);

CALL UpdateBooking(9, "2022-12-13");

CALL CancelBooking(10);

SELECT * FROM littlelemondm.bookings;

