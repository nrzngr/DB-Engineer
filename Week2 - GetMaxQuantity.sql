DROP PROCEDURE GetMaxQuantity;
CREATE PROCEDURE GetMaxQuantity() SELECT MAX(Quantity) as MaxQuantity FROM Orders; 
CALL GetMaxQuantity();

