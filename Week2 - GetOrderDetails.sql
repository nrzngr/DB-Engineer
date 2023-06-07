USE littlelemondm;
PREPARE GetOrderDetails FROM 'SELECT OrderID, Quantity, TOtalCost FROM orders WHERE CustomerID = ?';
SET@id = 3;
EXECUTE GetOrderDetails USING @id;
