DROP PROCEDURE CheckBooking;
CREATE PROCEDURE CheckBooking(A DATE, B INT) SELECT CONCAT('Table ', TableNo, ' is already booked.') as BookingStatus 
FROM Bookings WHERE Date = A AND TableNO = B;
CALL CheckBooking('2023-05-01', 1);