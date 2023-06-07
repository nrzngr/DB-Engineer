USE littlelemondm;
DELIMITER //
DROP PROCEDURE CancelOrder;
CREATE PROCEDURE CancelOrder(orderid INT)
BEGIN
DELETE FROM Bookings WHERE OrderID = orderid; 
SELECT CONCAT('Order ', bookid, ' succesfully cancelled.')  as Confirmation;
END //
DELIMITER ;
CALL CancelOrder(6);