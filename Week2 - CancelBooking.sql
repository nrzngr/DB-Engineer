DELIMITER //
CREATE PROCEDURE CancelBooking(bookid INT)
BEGIN
DELETE FROM Bookings WHERE BookingID = bookid; 
SELECT CONCAT('Booking, ', bookid, ' succesfully deleted.')  as Confirmation;
END //
DELIMITER ;
CALL CancelBooking(4);