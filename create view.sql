CREATE VIEW OrdersView AS SELECT OrderID, Quantity, TotalCost
FROM Orders;
SELECT * FROM OrdersView;