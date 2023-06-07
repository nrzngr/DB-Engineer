SELECT o.OrderID, o.TotalCost, c.CustomersID, c.FullName, m.Name from Orders as o
INNER JOIN Bookings as b ON o.BookingID = b.BookingID
INNER JOIN Customers as c on b.CustomerID = c.CustomersID
INNER JOIN Menu as m on o.ItemID = m.ItemID
WHERE o.TotalCost > 5
;