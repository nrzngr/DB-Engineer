
DELIMITER //
CREATE PROCEDURE UpdateBooking(bookid INT, newdate DATE)
BEGIN
UPDATE Bookings SET Date = newdate WHERE BookingID = bookid; 
SELECT CONCAT('Booking, ', bookid, ' succesfully updated.')  as Confirmation;
END //
DELIMITER ;
CALL UpdateBooking(1, '2024-01-01');