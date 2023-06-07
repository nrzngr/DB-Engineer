USE littlelemondm;
DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(bookingid INT, newdate DATE, tableno INT, customerid INT, employeeID INT)
BEGIN
INSERT INTO Bookings (BookingID, Date, TableNo, CustomerID, EmployeeID) VALUES (bookingid, newdate, tableno, customerid, employeeID);
SELECT 'New booking succesfully created' as Confirmation;
END //
DELIMITER ;
CALL AddBooking(12, '2023-06-04', 2, 4, 2);