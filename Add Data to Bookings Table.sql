START TRANSACTION;
INSERT INTO Bookings (BookingID, Date, TableNo, CustomerID, EmployeeID) VALUES (7, '2022-10-10', 5, 1, 2), (8, '2022-11-12', 3, 3, 4), (9, '2022-10-11', 2, 2, 3), (10, '2022-10-13', 2, 1, 2);
SELECT BookingID, Date, TableNo, CustomerID, EmployeeID FROM Bookings;
SELECT * FROM Bookings;