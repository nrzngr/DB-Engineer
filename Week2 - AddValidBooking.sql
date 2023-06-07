USE littlelemondm;
DELIMITER //

drop procedure AddValidBooking;
create procedure AddValidBooking(booking_date DATE, table_number INT)
BEGIN
DECLARE count_id INT;
START TRANSACTION;
INSERT INTO Bookings (Date, TableNo)  VALUES(booking_date, table_number);
SELECT COUNT(*) into count_id FROM Bookings
WHERE Date = booking_date AND TableNo = table_number;

If count_id > 1 THEN
rollback;
SELECT 'Booking slot is not available' as Message;
ELSE 
COMMIT;
SELECT 'Booking Succesful' as Message;
END IF;

END //
DELIMITER ;

Call AddValidBooking('2023-06-24', 12);