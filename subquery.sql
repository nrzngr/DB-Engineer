SELECT Name FROM littlelemondm.menu
WHERE ItemID  = ANY (SELECT ItemID FROM Orders WHERE Quantity > 1);